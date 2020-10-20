/// Metadata of the application in a certain language. It is usually shown in a
/// application store listing.
///
/// This is a mapping of a metadata directory. Compatible with fastlane supply.
///
/// See more:
/// - https://docs.fastlane.tools/actions/supply/
/// - https://f-droid.org/en/docs/All_About_Descriptions_Graphics_and_Screenshots/#fastlane-structure
class Metadata {
  Metadata({
    required this.language,
    this.title,
    this.shortDescription,
    this.fullDescription,
    this.video,
    this.iconPath,
    this.featureGraphicPath,
    this.phoneScreenshotsPaths = const [],
    this.sevenInchScreenshotsPaths = const [],
    this.tenInchScreenshotsPaths = const [],
    this.tvBannerPath,
    this.tvScreenshotsPaths = const [],
    this.wearScreenshotsPaths = const [],
    this.changelogs = const {},
  });

  /// Language of this [Metadata].
  final String language;

  /// Application's name. Usually should not be longer than 50 characters.
  final String? title;

  /// Short description. Usually should not be longer than 80 characters.
  final String? shortDescription;

  /// Full description. Usually should not be longer than 5000 characters.
  final String? fullDescription;

  /// A URL pointing to a video showcasing the application.
  final String? video;

  /// Path to the application's icon.
  final String? iconPath;

  /// Path to the application's feature graphic.
  final String? featureGraphicPath;

  /// Paths to the application's phone screenshots. They are used for smartphone
  /// devices.
  final List<String> phoneScreenshotsPaths;

  /// Paths to the application's seven inch screenshots. They are used for 7"
  /// tablet devices.
  final List<String> sevenInchScreenshotsPaths;

  /// Paths to the application's ten inch screenshots. They are used for 10"
  /// tablet devices.
  final List<String> tenInchScreenshotsPaths;

  /// Path to the application's TV banner. It is like an icon but for TV
  /// devices.
  final String? tvBannerPath;

  /// Paths to the application's TV screenshots. They are used for Android TV
  /// devices.
  final List<String> tvScreenshotsPaths;

  /// Paths to the application's wear screenshots. They are used for Wear OS
  /// devices.
  final List<String> wearScreenshotsPaths;

  /// Application's changelogs. Usually shown as _Recent changes_. Map of the
  /// version name to the changelog itself.
  final Map<String, String> changelogs;
}
