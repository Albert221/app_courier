import 'dart:io';

import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;

import 'metadata.dart';

const _titleFileName = 'title.txt';
const _shortDescriptionFileName = 'short_description.txt';
const _fullDescriptionFileName = 'full_description.txt';
const _videoFileName = 'video.txt';
const _imagesDirectoryName = 'images';
const _imagesExtensionsGlob = '{png,jpg,jpeg}';
const _iconFileName = 'icon';
const _featureGraphicFileName = 'featureGraphic';
const _phoneScreenshotsDirectoryName = 'phoneScreenshots';
const _sevenInchScreenshotsDirectoryName = 'sevenInchScreenshots';
const _tenInchScreenshotsDirectoryName = 'tenInchScreenshots';
const _tvBannerFileName = 'tvBanner';
const _tvScreenshotsDirectoryName = 'tvScreenshots';
const _wearScreenshotsDirectoryName = 'wearScreenshots';
const _changelogsDirectoryName = 'changelogs';
const _changelogsFilesRegex = r'\d+\.txt';

class MetadataExplorer {
  MetadataExplorer(this.metadataPath);

  /// Path to the metadata directory. Usually `metadata/` or
  /// `fastlane/metadata/android/` in the project's root directory.
  final String metadataPath;

  /// Fetches all [Metadata] in a given [metadataPath]. Throws
  /// [MetadataDirectoryDoesNotExist] when the metadata directory does not
  /// exist.
  Future<List<Metadata>> fetchAllLanguages() async {
    final dir = Directory(metadataPath);
    if (!await dir.exists()) {
      throw MetadataDirectoryDoesNotExist(dir);
    }

    return dir
        .list()
        .where((entity) => entity is Directory)
        .cast<Directory>()
        .asyncMap(
          (languageDir) => fetchLanguage(path.basename(languageDir.path)),
        )
        .toList();
  }

  /// Fetches one specific [Metadata] for a given [language] in a given
  /// [metadataPath]. Throws [LanguageDirectoryDoesNotExist] when a directory
  /// with a given name does not exist.
  Future<Metadata> fetchLanguage(String language) async {
    final languageDir = Directory(path.join(metadataPath, language));
    if (!await languageDir.exists()) {
      throw LanguageDirectoryDoesNotExist(language, languageDir);
    }

    final metadataPieces = await Future.wait([
      /* 0 */ _fetchTitle(language),
      /* 1 */ _fetchShortDescription(language),
      /* 2 */ _fetchFullDescription(language),
      /* 3 */ _fetchVideo(language),
      /* 4 */ _fetchImagePath(language, _iconFileName),
      /* 5 */ _fetchImagePath(language, _featureGraphicFileName),
      /* 6 */ _fetchScreenshots(language, _phoneScreenshotsDirectoryName),
      /* 7 */ _fetchScreenshots(language, _sevenInchScreenshotsDirectoryName),
      /* 8 */ _fetchScreenshots(language, _tenInchScreenshotsDirectoryName),
      /* 9 */ _fetchImagePath(language, _tvBannerFileName),
      /* 10 */ _fetchScreenshots(language, _tvScreenshotsDirectoryName),
      /* 11 */ _fetchScreenshots(language, _wearScreenshotsDirectoryName),
      /* 12 */ _fetchChangelogs(language),
    ]);

    return Metadata(
      language: language,
      title: metadataPieces[0] as String?,
      shortDescription: metadataPieces[1] as String?,
      fullDescription: metadataPieces[2] as String?,
      video: metadataPieces[3] as String?,
      iconPath: metadataPieces[4] as String?,
      featureGraphicPath: metadataPieces[5] as String?,
      phoneScreenshotsPaths: metadataPieces[6] as List<String>,
      sevenInchScreenshotsPaths: metadataPieces[7] as List<String>,
      tenInchScreenshotsPaths: metadataPieces[8] as List<String>,
      tvBannerPath: metadataPieces[9] as String?,
      tvScreenshotsPaths: metadataPieces[10] as List<String>,
      wearScreenshotsPaths: metadataPieces[11] as List<String>,
      changelogs: metadataPieces[12] as Map<String, String>,
    );
  }

  Future<String?> _fetchTitle(String language) {
    return _fetchStringFile(path.join(metadataPath, language, _titleFileName));
  }

  Future<String?> _fetchShortDescription(String language) {
    return _fetchStringFile(
      path.join(metadataPath, language, _shortDescriptionFileName),
    );
  }

  Future<String?> _fetchFullDescription(String language) {
    return _fetchStringFile(
      path.join(metadataPath, language, _fullDescriptionFileName),
    );
  }

  Future<String?> _fetchVideo(String language) {
    return _fetchStringFile(path.join(metadataPath, language, _videoFileName));
  }

  Future<List<String>> _fetchScreenshots(String language, String directory) {
    return _fetchImagesPaths(language, path.join(directory, '*'));
  }

  Future<String?> _fetchImagePath(String language, String imageFileName) async {
    return _fetchImagesPaths(language, imageFileName).then(
      (images) => images.cast<String?>().firstWhere(
            (_) => true,
            orElse: () => null,
          ),
    );
  }

  Future<List<String>> _fetchImagesPaths(
    String language,
    String imagesFileNameGlob,
  ) {
    final images = Glob(
      path.join(
        metadataPath,
        language,
        _imagesDirectoryName,
        '$imagesFileNameGlob.$_imagesExtensionsGlob',
      ),
    );

    return images
        .list()
        .where((entity) => entity is File)
        .map((entity) => entity.path)
        .toList();
  }

  Future<Map<String, String>?> _fetchChangelogs(String language) async {
    final changelogsDir = Directory(
      path.join(metadataPath, language, _changelogsDirectoryName),
    );
    if (!await changelogsDir.exists()) {
      return {};
    }

    final fileNameRegex = RegExp(_changelogsFilesRegex);
    final changelogs = await changelogsDir
        .list()
        .where((entity) {
          return entity is File &&
              fileNameRegex.hasMatch(path.basename(entity.path));
        })
        .cast<File>()
        .asyncMap((file) async {
          return MapEntry(
            path.basenameWithoutExtension(file.path),
            await file.readAsString(),
          );
        })
        .toList();

    return Map.fromEntries(changelogs);
  }

  Future<String?> _fetchStringFile(String path) async {
    final file = File(path);
    if (!await file.exists()) {
      return null;
    }

    return file.readAsString();
  }
}

/// An exception thrown when a specified metadata directory does not exist.
class MetadataDirectoryDoesNotExist implements Exception {
  const MetadataDirectoryDoesNotExist(this.directory);

  final Directory directory;

  String toString() => 'Directory ${directory.path} does not exist.';
}

/// An exception thrown when the specified language directory does not exist.
class LanguageDirectoryDoesNotExist implements Exception {
  const LanguageDirectoryDoesNotExist(this.language, this.directory);

  final String language;
  final Directory directory;

  String toString() =>
      'Directory for the $language language does not exist: ' + directory.path;
}
