import 'package:app_courier/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project implements _$Project {
  const factory Project({
    /// Path to the project on disk.
    @required String path,
    Map<Language, AndroidLanguage> androidLanguages,
  }) = _Project;

  const Project._();

  String get defaultAppName => androidLanguages.entries.first.value.appName;
}

@freezed
abstract class AndroidLanguage with _$AndroidLanguage {
  const factory AndroidLanguage({
    /// GP: 50 characters max
    @required String appName,

    /// GP: 80 characters max
    @required String shortDescription,

    /// GP: 4000 characters max
    @required String fullDescription,
  }) = _AndroidLanguage;
}
