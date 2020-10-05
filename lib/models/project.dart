import 'package:app_courier/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  factory Project({
    /// Path to the project on disk.
    @required String path,
    @required Map<Language, Metadata> translations,

    /// Project name in user's preferred language.
    String defaultName,
  }) = _Project;

  @late
  List<String> get versionsNames => translations.values
      .expand((translation) => translation.changelogs.keys)
      .toSet()
      .toList();
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    /// GP: 50 characters max
    @required String appName,

    /// GP: 80 characters max
    @required String shortDescription,

    /// GP: 4000 characters max
    @required String fullDescription,

    /// Map of versions names to changelogs. GP: 500 characters max
    @required Map<String, String> changelogs,
  }) = _Metadata;
}
