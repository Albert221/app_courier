// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectTearOff {
  const _$ProjectTearOff();

// ignore: unused_element
  _Project call(
      {@required String path,
      @required Map<Language, Metadata> translations,
      String defaultName}) {
    return _Project(
      path: path,
      translations: translations,
      defaultName: defaultName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Project = _$ProjectTearOff();

/// @nodoc
mixin _$Project {
  /// Path to the project on disk.
  String get path;
  Map<Language, Metadata> get translations;

  /// Project name in user's preferred language.
  String get defaultName;

  $ProjectCopyWith<Project> get copyWith;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String path, Map<Language, Metadata> translations, String defaultName});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object path = freezed,
    Object translations = freezed,
    Object defaultName = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      translations: translations == freezed
          ? _value.translations
          : translations as Map<Language, Metadata>,
      defaultName:
          defaultName == freezed ? _value.defaultName : defaultName as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String path, Map<Language, Metadata> translations, String defaultName});
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object path = freezed,
    Object translations = freezed,
    Object defaultName = freezed,
  }) {
    return _then(_Project(
      path: path == freezed ? _value.path : path as String,
      translations: translations == freezed
          ? _value.translations
          : translations as Map<Language, Metadata>,
      defaultName:
          defaultName == freezed ? _value.defaultName : defaultName as String,
    ));
  }
}

/// @nodoc
class _$_Project implements _Project {
  _$_Project(
      {@required this.path, @required this.translations, this.defaultName})
      : assert(path != null),
        assert(translations != null);

  @override

  /// Path to the project on disk.
  final String path;
  @override
  final Map<Language, Metadata> translations;
  @override

  /// Project name in user's preferred language.
  final String defaultName;

  bool _didversionsNames = false;
  List<String> _versionsNames;

  @override
  List<String> get versionsNames {
    if (_didversionsNames == false) {
      _didversionsNames = true;
      _versionsNames = translations.values
          .expand((translation) => translation.changelogs.keys)
          .toSet()
          .toList();
    }
    return _versionsNames;
  }

  @override
  String toString() {
    return 'Project(path: $path, translations: $translations, defaultName: $defaultName, versionsNames: $versionsNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.translations, translations) ||
                const DeepCollectionEquality()
                    .equals(other.translations, translations)) &&
            (identical(other.defaultName, defaultName) ||
                const DeepCollectionEquality()
                    .equals(other.defaultName, defaultName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(translations) ^
      const DeepCollectionEquality().hash(defaultName);

  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project implements Project {
  factory _Project(
      {@required String path,
      @required Map<Language, Metadata> translations,
      String defaultName}) = _$_Project;

  @override

  /// Path to the project on disk.
  String get path;
  @override
  Map<Language, Metadata> get translations;
  @override

  /// Project name in user's preferred language.
  String get defaultName;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}

/// @nodoc
class _$MetadataTearOff {
  const _$MetadataTearOff();

// ignore: unused_element
  _Metadata call(
      {@required String appName,
      @required String shortDescription,
      @required String fullDescription,
      @required Map<String, String> changelogs}) {
    return _Metadata(
      appName: appName,
      shortDescription: shortDescription,
      fullDescription: fullDescription,
      changelogs: changelogs,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Metadata = _$MetadataTearOff();

/// @nodoc
mixin _$Metadata {
  /// GP: 50 characters max
  String get appName;

  /// GP: 80 characters max
  String get shortDescription;

  /// GP: 4000 characters max
  String get fullDescription;

  /// Map of versions names to changelogs. GP: 500 characters max
  Map<String, String> get changelogs;

  $MetadataCopyWith<Metadata> get copyWith;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res>;
  $Res call(
      {String appName,
      String shortDescription,
      String fullDescription,
      Map<String, String> changelogs});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res> implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  final Metadata _value;
  // ignore: unused_field
  final $Res Function(Metadata) _then;

  @override
  $Res call({
    Object appName = freezed,
    Object shortDescription = freezed,
    Object fullDescription = freezed,
    Object changelogs = freezed,
  }) {
    return _then(_value.copyWith(
      appName: appName == freezed ? _value.appName : appName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      fullDescription: fullDescription == freezed
          ? _value.fullDescription
          : fullDescription as String,
      changelogs: changelogs == freezed
          ? _value.changelogs
          : changelogs as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) then) =
      __$MetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appName,
      String shortDescription,
      String fullDescription,
      Map<String, String> changelogs});
}

/// @nodoc
class __$MetadataCopyWithImpl<$Res> extends _$MetadataCopyWithImpl<$Res>
    implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(_Metadata _value, $Res Function(_Metadata) _then)
      : super(_value, (v) => _then(v as _Metadata));

  @override
  _Metadata get _value => super._value as _Metadata;

  @override
  $Res call({
    Object appName = freezed,
    Object shortDescription = freezed,
    Object fullDescription = freezed,
    Object changelogs = freezed,
  }) {
    return _then(_Metadata(
      appName: appName == freezed ? _value.appName : appName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      fullDescription: fullDescription == freezed
          ? _value.fullDescription
          : fullDescription as String,
      changelogs: changelogs == freezed
          ? _value.changelogs
          : changelogs as Map<String, String>,
    ));
  }
}

/// @nodoc
class _$_Metadata implements _Metadata {
  const _$_Metadata(
      {@required this.appName,
      @required this.shortDescription,
      @required this.fullDescription,
      @required this.changelogs})
      : assert(appName != null),
        assert(shortDescription != null),
        assert(fullDescription != null),
        assert(changelogs != null);

  @override

  /// GP: 50 characters max
  final String appName;
  @override

  /// GP: 80 characters max
  final String shortDescription;
  @override

  /// GP: 4000 characters max
  final String fullDescription;
  @override

  /// Map of versions names to changelogs. GP: 500 characters max
  final Map<String, String> changelogs;

  @override
  String toString() {
    return 'Metadata(appName: $appName, shortDescription: $shortDescription, fullDescription: $fullDescription, changelogs: $changelogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Metadata &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.fullDescription, fullDescription) ||
                const DeepCollectionEquality()
                    .equals(other.fullDescription, fullDescription)) &&
            (identical(other.changelogs, changelogs) ||
                const DeepCollectionEquality()
                    .equals(other.changelogs, changelogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(fullDescription) ^
      const DeepCollectionEquality().hash(changelogs);

  @override
  _$MetadataCopyWith<_Metadata> get copyWith =>
      __$MetadataCopyWithImpl<_Metadata>(this, _$identity);
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {@required String appName,
      @required String shortDescription,
      @required String fullDescription,
      @required Map<String, String> changelogs}) = _$_Metadata;

  @override

  /// GP: 50 characters max
  String get appName;
  @override

  /// GP: 80 characters max
  String get shortDescription;
  @override

  /// GP: 4000 characters max
  String get fullDescription;
  @override

  /// Map of versions names to changelogs. GP: 500 characters max
  Map<String, String> get changelogs;
  @override
  _$MetadataCopyWith<_Metadata> get copyWith;
}
