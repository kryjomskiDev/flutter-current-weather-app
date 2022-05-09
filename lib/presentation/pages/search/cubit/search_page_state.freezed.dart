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

  SearchPageStateLoading loading() {
    return const SearchPageStateLoading();
  }

  SearchPageStateLoaded loaded({Weather? weather}) {
    return SearchPageStateLoaded(
      weather: weather,
    );
  }

  SearchPageStateError error() {
    return const SearchPageStateError();
  }
}

/// @nodoc
const $SearchPageState = _$SearchPageStateTearOff();

/// @nodoc
mixin _$SearchPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
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
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
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
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
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
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() error,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
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
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
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
abstract class $SearchPageStateErrorCopyWith<$Res> {
  factory $SearchPageStateErrorCopyWith(SearchPageStateError value,
          $Res Function(SearchPageStateError) then) =
      _$SearchPageStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPageStateErrorCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateErrorCopyWith<$Res> {
  _$SearchPageStateErrorCopyWithImpl(
      SearchPageStateError _value, $Res Function(SearchPageStateError) _then)
      : super(_value, (v) => _then(v as SearchPageStateError));

  @override
  SearchPageStateError get _value => super._value as SearchPageStateError;
}

/// @nodoc

class _$SearchPageStateError implements SearchPageStateError {
  const _$SearchPageStateError();

  @override
  String toString() {
    return 'SearchPageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchPageStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather? weather) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather? weather)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchPageStateLoading value) loading,
    required TResult Function(SearchPageStateLoaded value) loaded,
    required TResult Function(SearchPageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPageStateLoading value)? loading,
    TResult Function(SearchPageStateLoaded value)? loaded,
    TResult Function(SearchPageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchPageStateError implements SearchPageState {
  const factory SearchPageStateError() = _$SearchPageStateError;
}
