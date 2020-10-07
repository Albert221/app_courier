import 'dart:io';

import 'package:path/path.dart' as path;

import 'metadata.dart';

const _titleFileName = 'title.txt';
const _shortDescriptionFileName = 'short_description.txt';
const _fullDescriptionFileName = 'full_description.txt';
const _videoFileName = 'video.txt';
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
      /* 4 */ _fetchChangelogs(language),
    ]);

    return Metadata(
      language: language,
      title: metadataPieces[0] as String?,
      shortDescription: metadataPieces[1] as String?,
      fullDescription: metadataPieces[2] as String?,
      video: metadataPieces[3] as String?,
      changelogs: metadataPieces[4] as Map<String, String>?,
      // TODO: Add retrieving graphics.
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

  Future<Map<String, String>?> _fetchChangelogs(String language) async {
    final changelogsDir = Directory(
      path.join(metadataPath, language, _changelogsDirectoryName),
    );
    if (!await changelogsDir.exists()) {
      return null;
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
