/// Metadata of the application in a certain language. It is usually shown in a
/// application store listing.
///
/// This is a mapping of a metadata directory. Compatible with fastlane supply.
class Metadata {
  Metadata({
    required this.language,
    this.title,
    this.shortDescription,
    this.fullDescription,
    this.video,
    this.iconPath,
    this.featureGraphicPath,
    this.phoneScreenshotsPaths,
    this.sevenInchScreenshotsPaths,
    this.tenInchScreenshotsPaths,
    this.tvBannerPath,
    this.tvScreenshotsPaths,
    this.wearScreenshotsPaths,
    this.changelogs,
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
  /// devices. If the [phoneScreenshotsPaths] is empty it means that the phone
  /// screenshots directory exists. It is null otherwise.
  final List<String>? phoneScreenshotsPaths;

  /// Paths to the application's seven inch screenshots. They are used for 7"
  /// tablet devices. If the [sevenInchScreenshotsPaths] is empty it means that
  /// the phone screenshots directory exists. It is null otherwise.
  final List<String>? sevenInchScreenshotsPaths;

  /// Paths to the application's ten inch screenshots. They are used for 10"
  /// tablet devices. If the [tenInchScreenshotsPaths] is empty it means that
  /// the phone screenshots directory exists. It is null otherwise.
  final List<String>? tenInchScreenshotsPaths;

  /// Path to the application's TV banner. It is like an icon but for TV
  /// devices.
  final String? tvBannerPath;

  /// Paths to the application's TV screenshots. They are used for Android TV
  /// devices. If the [tvScreenshotsPaths] is empty it means that the phone
  /// screenshots directory exists. It is null otherwise.
  final List<String>? tvScreenshotsPaths;

  /// Paths to the application's wear screenshots. They are used for Wear OS
  /// devices. If the [wearScreenshotsPaths] is empty it means that the wear
  /// screenshots directory exists. It is null otherwise.
  final List<String>? wearScreenshotsPaths;

  /// Application's changelogs. Usually shown as _Recent changes_. Map of the
  /// version name to the changelog itself. If the [changelogs] is empty it
  /// means that the changelogs directory exists. It is null otherwise.
  final Map<String, String>? changelogs;
}
