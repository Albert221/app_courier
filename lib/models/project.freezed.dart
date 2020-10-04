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
      Map<Language, AndroidLanguage> androidLanguages}) {
    return _Project(
      path: path,
      androidLanguages: androidLanguages,
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
  Map<Language, AndroidLanguage> get androidLanguages;

  $ProjectCopyWith<Project> get copyWith;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call({String path, Map<Language, AndroidLanguage> androidLanguages});
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
    Object androidLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      androidLanguages: androidLanguages == freezed
          ? _value.androidLanguages
          : androidLanguages as Map<Language, AndroidLanguage>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call({String path, Map<Language, AndroidLanguage> androidLanguages});
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
    Object androidLanguages = freezed,
  }) {
    return _then(_Project(
      path: path == freezed ? _value.path : path as String,
      androidLanguages: androidLanguages == freezed
          ? _value.androidLanguages
          : androidLanguages as Map<Language, AndroidLanguage>,
    ));
  }
}

/// @nodoc
class _$_Project extends _Project {
  const _$_Project({@required this.path, this.androidLanguages})
      : assert(path != null),
        super._();

  @override

  /// Path to the project on disk.
  final String path;
  @override
  final Map<Language, AndroidLanguage> androidLanguages;

  @override
  String toString() {
    return 'Project(path: $path, androidLanguages: $androidLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.androidLanguages, androidLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.androidLanguages, androidLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(androidLanguages);

  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project extends Project {
  const _Project._() : super._();
  const factory _Project(
      {@required String path,
      Map<Language, AndroidLanguage> androidLanguages}) = _$_Project;

  @override

  /// Path to the project on disk.
  String get path;
  @override
  Map<Language, AndroidLanguage> get androidLanguages;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}

/// @nodoc
class _$AndroidLanguageTearOff {
  const _$AndroidLanguageTearOff();

// ignore: unused_element
  _AndroidLanguage call(
      {@required String appName,
      @required String shortDescription,
      @required String fullDescription}) {
    return _AndroidLanguage(
      appName: appName,
      shortDescription: shortDescription,
      fullDescription: fullDescription,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AndroidLanguage = _$AndroidLanguageTearOff();

/// @nodoc
mixin _$AndroidLanguage {
  /// GP: 50 characters max
  String get appName;

  /// GP: 80 characters max
  String get shortDescription;

  /// GP: 4000 characters max
  String get fullDescription;

  $AndroidLanguageCopyWith<AndroidLanguage> get copyWith;
}

/// @nodoc
abstract class $AndroidLanguageCopyWith<$Res> {
  factory $AndroidLanguageCopyWith(
          AndroidLanguage value, $Res Function(AndroidLanguage) then) =
      _$AndroidLanguageCopyWithImpl<$Res>;
  $Res call({String appName, String shortDescription, String fullDescription});
}

/// @nodoc
class _$AndroidLanguageCopyWithImpl<$Res>
    implements $AndroidLanguageCopyWith<$Res> {
  _$AndroidLanguageCopyWithImpl(this._value, this._then);

  final AndroidLanguage _value;
  // ignore: unused_field
  final $Res Function(AndroidLanguage) _then;

  @override
  $Res call({
    Object appName = freezed,
    Object shortDescription = freezed,
    Object fullDescription = freezed,
  }) {
    return _then(_value.copyWith(
      appName: appName == freezed ? _value.appName : appName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      fullDescription: fullDescription == freezed
          ? _value.fullDescription
          : fullDescription as String,
    ));
  }
}

/// @nodoc
abstract class _$AndroidLanguageCopyWith<$Res>
    implements $AndroidLanguageCopyWith<$Res> {
  factory _$AndroidLanguageCopyWith(
          _AndroidLanguage value, $Res Function(_AndroidLanguage) then) =
      __$AndroidLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String appName, String shortDescription, String fullDescription});
}

/// @nodoc
class __$AndroidLanguageCopyWithImpl<$Res>
    extends _$AndroidLanguageCopyWithImpl<$Res>
    implements _$AndroidLanguageCopyWith<$Res> {
  __$AndroidLanguageCopyWithImpl(
      _AndroidLanguage _value, $Res Function(_AndroidLanguage) _then)
      : super(_value, (v) => _then(v as _AndroidLanguage));

  @override
  _AndroidLanguage get _value => super._value as _AndroidLanguage;

  @override
  $Res call({
    Object appName = freezed,
    Object shortDescription = freezed,
    Object fullDescription = freezed,
  }) {
    return _then(_AndroidLanguage(
      appName: appName == freezed ? _value.appName : appName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      fullDescription: fullDescription == freezed
          ? _value.fullDescription
          : fullDescription as String,
    ));
  }
}

/// @nodoc
class _$_AndroidLanguage implements _AndroidLanguage {
  const _$_AndroidLanguage(
      {@required this.appName,
      @required this.shortDescription,
      @required this.fullDescription})
      : assert(appName != null),
        assert(shortDescription != null),
        assert(fullDescription != null);

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
  String toString() {
    return 'AndroidLanguage(appName: $appName, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AndroidLanguage &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.fullDescription, fullDescription) ||
                const DeepCollectionEquality()
                    .equals(other.fullDescription, fullDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(fullDescription);

  @override
  _$AndroidLanguageCopyWith<_AndroidLanguage> get copyWith =>
      __$AndroidLanguageCopyWithImpl<_AndroidLanguage>(this, _$identity);
}

abstract class _AndroidLanguage implements AndroidLanguage {
  const factory _AndroidLanguage(
      {@required String appName,
      @required String shortDescription,
      @required String fullDescription}) = _$_AndroidLanguage;

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
  _$AndroidLanguageCopyWith<_AndroidLanguage> get copyWith;
}
