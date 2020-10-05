// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'languages_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LanguagesSearchStateTearOff {
  const _$LanguagesSearchStateTearOff();

// ignore: unused_element
  _LanguagesSearchState call(
      {String query = '', @required List<Language> languages}) {
    return _LanguagesSearchState(
      query: query,
      languages: languages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LanguagesSearchState = _$LanguagesSearchStateTearOff();

/// @nodoc
mixin _$LanguagesSearchState {
  String get query;
  List<Language> get languages;

  $LanguagesSearchStateCopyWith<LanguagesSearchState> get copyWith;
}

/// @nodoc
abstract class $LanguagesSearchStateCopyWith<$Res> {
  factory $LanguagesSearchStateCopyWith(LanguagesSearchState value,
          $Res Function(LanguagesSearchState) then) =
      _$LanguagesSearchStateCopyWithImpl<$Res>;
  $Res call({String query, List<Language> languages});
}

/// @nodoc
class _$LanguagesSearchStateCopyWithImpl<$Res>
    implements $LanguagesSearchStateCopyWith<$Res> {
  _$LanguagesSearchStateCopyWithImpl(this._value, this._then);

  final LanguagesSearchState _value;
  // ignore: unused_field
  final $Res Function(LanguagesSearchState) _then;

  @override
  $Res call({
    Object query = freezed,
    Object languages = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
      languages:
          languages == freezed ? _value.languages : languages as List<Language>,
    ));
  }
}

/// @nodoc
abstract class _$LanguagesSearchStateCopyWith<$Res>
    implements $LanguagesSearchStateCopyWith<$Res> {
  factory _$LanguagesSearchStateCopyWith(_LanguagesSearchState value,
          $Res Function(_LanguagesSearchState) then) =
      __$LanguagesSearchStateCopyWithImpl<$Res>;
  @override
  $Res call({String query, List<Language> languages});
}

/// @nodoc
class __$LanguagesSearchStateCopyWithImpl<$Res>
    extends _$LanguagesSearchStateCopyWithImpl<$Res>
    implements _$LanguagesSearchStateCopyWith<$Res> {
  __$LanguagesSearchStateCopyWithImpl(
      _LanguagesSearchState _value, $Res Function(_LanguagesSearchState) _then)
      : super(_value, (v) => _then(v as _LanguagesSearchState));

  @override
  _LanguagesSearchState get _value => super._value as _LanguagesSearchState;

  @override
  $Res call({
    Object query = freezed,
    Object languages = freezed,
  }) {
    return _then(_LanguagesSearchState(
      query: query == freezed ? _value.query : query as String,
      languages:
          languages == freezed ? _value.languages : languages as List<Language>,
    ));
  }
}

/// @nodoc
class _$_LanguagesSearchState implements _LanguagesSearchState {
  const _$_LanguagesSearchState({this.query = '', @required this.languages})
      : assert(query != null),
        assert(languages != null);

  @JsonKey(defaultValue: '')
  @override
  final String query;
  @override
  final List<Language> languages;

  @override
  String toString() {
    return 'LanguagesSearchState(query: $query, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagesSearchState &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(languages);

  @override
  _$LanguagesSearchStateCopyWith<_LanguagesSearchState> get copyWith =>
      __$LanguagesSearchStateCopyWithImpl<_LanguagesSearchState>(
          this, _$identity);
}

abstract class _LanguagesSearchState implements LanguagesSearchState {
  const factory _LanguagesSearchState(
      {String query,
      @required List<Language> languages}) = _$_LanguagesSearchState;

  @override
  String get query;
  @override
  List<Language> get languages;
  @override
  _$LanguagesSearchStateCopyWith<_LanguagesSearchState> get copyWith;
}
