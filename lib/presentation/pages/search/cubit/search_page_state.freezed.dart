// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchPageStateTearOff {
  const _$SearchPageStateTearOff();

  _SearchPageStateInitial initial() {
    return const _SearchPageStateInitial();
  }

  SearchPageStateLoading loading() {
    return const SearchPageStateLoading();
  }

  SearchPageStateLoaded loaded({Weather? weather}) {
    return SearchPageStateLoaded(
      weather: weather,
    );
  }

  SearchPageStatePermissionsNotGranted permissionsNotGranted() {
    return const SearchPageStatePermissionsNotGranted();
  }
}

/// @nodoc
const $SearchPageState = _$SearchPageStateTearOff();

/// @nodoc
mixin _$SearchPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() permissionsNotGranted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPageStateInitial value) initial,
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStatePermissionsNotGranted value)
        permissionsNotGranted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  final SearchPageState _value;
  // ignore: unused_field
  final $Res Function(SearchPageState) _then;
}

/// @nodoc
abstract class _$SearchPageStateInitialCopyWith<$Res> {
  factory _$SearchPageStateInitialCopyWith(_SearchPageStateInitial value,
          $Res Function(_SearchPageStateInitial) then) =
      __$SearchPageStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchPageStateInitialCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements _$SearchPageStateInitialCopyWith<$Res> {
  __$SearchPageStateInitialCopyWithImpl(_SearchPageStateInitial _value,
      $Res Function(_SearchPageStateInitial) _then)
      : super(_value, (v) => _then(v as _SearchPageStateInitial));

  @override
  _SearchPageStateInitial get _value => super._value as _SearchPageStateInitial;
}

/// @nodoc

class _$_SearchPageStateInitial implements _SearchPageStateInitial {
  const _$_SearchPageStateInitial();

  @override
  String toString() {
    return 'SearchPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchPageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() permissionsNotGranted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPageStateInitial value) initial,
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStatePermissionsNotGranted value)
        permissionsNotGranted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchPageStateInitial implements SearchPageState {
  const factory _SearchPageStateInitial() = _$_SearchPageStateInitial;
}

/// @nodoc
abstract class $SearchPageStateLoadingCopyWith<$Res> {
  factory $SearchPageStateLoadingCopyWith(SearchPageStateLoading value,
          $Res Function(SearchPageStateLoading) then) =
      _$SearchPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPageStateLoadingCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateLoadingCopyWith<$Res> {
  _$SearchPageStateLoadingCopyWithImpl(SearchPageStateLoading _value,
      $Res Function(SearchPageStateLoading) _then)
      : super(_value, (v) => _then(v as SearchPageStateLoading));

  @override
  SearchPageStateLoading get _value => super._value as SearchPageStateLoading;
}

/// @nodoc

class _$SearchPageStateLoading implements SearchPageStateLoading {
  const _$SearchPageStateLoading();

  @override
  String toString() {
    return 'SearchPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() permissionsNotGranted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPageStateInitial value) initial,
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStatePermissionsNotGranted value)
        permissionsNotGranted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchPageStateLoading implements SearchPageState {
  const factory SearchPageStateLoading() = _$SearchPageStateLoading;
}

/// @nodoc
abstract class $SearchPageStateLoadedCopyWith<$Res> {
  factory $SearchPageStateLoadedCopyWith(SearchPageStateLoaded value,
          $Res Function(SearchPageStateLoaded) then) =
      _$SearchPageStateLoadedCopyWithImpl<$Res>;
  $Res call({Weather? weather});
}

/// @nodoc
class _$SearchPageStateLoadedCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateLoadedCopyWith<$Res> {
  _$SearchPageStateLoadedCopyWithImpl(
      SearchPageStateLoaded _value, $Res Function(SearchPageStateLoaded) _then)
      : super(_value, (v) => _then(v as SearchPageStateLoaded));

  @override
  SearchPageStateLoaded get _value => super._value as SearchPageStateLoaded;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(SearchPageStateLoaded(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$SearchPageStateLoaded implements SearchPageStateLoaded {
  const _$SearchPageStateLoaded({this.weather});

  @override
  final Weather? weather;

  @override
  String toString() {
    return 'SearchPageState.loaded(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchPageStateLoaded &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  $SearchPageStateLoadedCopyWith<SearchPageStateLoaded> get copyWith =>
      _$SearchPageStateLoadedCopyWithImpl<SearchPageStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() permissionsNotGranted,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPageStateInitial value) initial,
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStatePermissionsNotGranted value)
        permissionsNotGranted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchPageStateLoaded implements SearchPageState {
  const factory SearchPageStateLoaded({Weather? weather}) =
      _$SearchPageStateLoaded;

  Weather? get weather;
  @JsonKey(ignore: true)
  $SearchPageStateLoadedCopyWith<SearchPageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStatePermissionsNotGrantedCopyWith<$Res> {
  factory $SearchPageStatePermissionsNotGrantedCopyWith(
          SearchPageStatePermissionsNotGranted value,
          $Res Function(SearchPageStatePermissionsNotGranted) then) =
      _$SearchPageStatePermissionsNotGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPageStatePermissionsNotGrantedCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStatePermissionsNotGrantedCopyWith<$Res> {
  _$SearchPageStatePermissionsNotGrantedCopyWithImpl(
      SearchPageStatePermissionsNotGranted _value,
      $Res Function(SearchPageStatePermissionsNotGranted) _then)
      : super(_value, (v) => _then(v as SearchPageStatePermissionsNotGranted));

  @override
  SearchPageStatePermissionsNotGranted get _value =>
      super._value as SearchPageStatePermissionsNotGranted;
}

/// @nodoc

class _$SearchPageStatePermissionsNotGranted
    implements SearchPageStatePermissionsNotGranted {
  const _$SearchPageStatePermissionsNotGranted();

  @override
  String toString() {
    return 'SearchPageState.permissionsNotGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchPageStatePermissionsNotGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() permissionsNotGranted,
  }) {
    return permissionsNotGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
  }) {
    return permissionsNotGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (permissionsNotGranted != null) {
      return permissionsNotGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPageStateInitial value) initial,
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStatePermissionsNotGranted value)
        permissionsNotGranted,
  }) {
    return permissionsNotGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
  }) {
    return permissionsNotGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPageStateInitial value)? initial,
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStatePermissionsNotGranted value)?
        permissionsNotGranted,
    required TResult orElse(),
  }) {
    if (permissionsNotGranted != null) {
      return permissionsNotGranted(this);
    }
    return orElse();
  }
}

abstract class SearchPageStatePermissionsNotGranted implements SearchPageState {
  const factory SearchPageStatePermissionsNotGranted() =
      _$SearchPageStatePermissionsNotGranted;
}
