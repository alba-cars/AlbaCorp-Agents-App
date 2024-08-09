// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enquiries_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnquiriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquiriesStateCopyWith<$Res> {
  factory $EnquiriesStateCopyWith(
          EnquiriesState value, $Res Function(EnquiriesState) then) =
      _$EnquiriesStateCopyWithImpl<$Res, EnquiriesState>;
}

/// @nodoc
class _$EnquiriesStateCopyWithImpl<$Res, $Val extends EnquiriesState>
    implements $EnquiriesStateCopyWith<$Res> {
  _$EnquiriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnquiriesStateInitialImplCopyWith<$Res> {
  factory _$$EnquiriesStateInitialImplCopyWith(
          _$EnquiriesStateInitialImpl value,
          $Res Function(_$EnquiriesStateInitialImpl) then) =
      __$$EnquiriesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnquiriesStateInitialImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateInitialImpl>
    implements _$$EnquiriesStateInitialImplCopyWith<$Res> {
  __$$EnquiriesStateInitialImplCopyWithImpl(_$EnquiriesStateInitialImpl _value,
      $Res Function(_$EnquiriesStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnquiriesStateInitialImpl implements EnquiriesStateInitial {
  const _$EnquiriesStateInitialImpl();

  @override
  String toString() {
    return 'EnquiriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EnquiriesStateInitial implements EnquiriesState {
  const factory EnquiriesStateInitial() = _$EnquiriesStateInitialImpl;
}

/// @nodoc
abstract class _$$EnquiriesStateLoadingImplCopyWith<$Res> {
  factory _$$EnquiriesStateLoadingImplCopyWith(
          _$EnquiriesStateLoadingImpl value,
          $Res Function(_$EnquiriesStateLoadingImpl) then) =
      __$$EnquiriesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnquiriesStateLoadingImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateLoadingImpl>
    implements _$$EnquiriesStateLoadingImplCopyWith<$Res> {
  __$$EnquiriesStateLoadingImplCopyWithImpl(_$EnquiriesStateLoadingImpl _value,
      $Res Function(_$EnquiriesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnquiriesStateLoadingImpl implements EnquiriesStateLoading {
  const _$EnquiriesStateLoadingImpl();

  @override
  String toString() {
    return 'EnquiriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EnquiriesStateLoading implements EnquiriesState {
  const factory EnquiriesStateLoading() = _$EnquiriesStateLoadingImpl;
}

/// @nodoc
abstract class _$$EnquiriesStateLoadingMoreImplCopyWith<$Res> {
  factory _$$EnquiriesStateLoadingMoreImplCopyWith(
          _$EnquiriesStateLoadingMoreImpl value,
          $Res Function(_$EnquiriesStateLoadingMoreImpl) then) =
      __$$EnquiriesStateLoadingMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnquiriesStateLoadingMoreImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateLoadingMoreImpl>
    implements _$$EnquiriesStateLoadingMoreImplCopyWith<$Res> {
  __$$EnquiriesStateLoadingMoreImplCopyWithImpl(
      _$EnquiriesStateLoadingMoreImpl _value,
      $Res Function(_$EnquiriesStateLoadingMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnquiriesStateLoadingMoreImpl implements _EnquiriesStateLoadingMore {
  const _$EnquiriesStateLoadingMoreImpl();

  @override
  String toString() {
    return 'EnquiriesState.loadingMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateLoadingMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _EnquiriesStateLoadingMore implements EnquiriesState {
  const factory _EnquiriesStateLoadingMore() = _$EnquiriesStateLoadingMoreImpl;
}

/// @nodoc
abstract class _$$EnquiriesStateLoadedImplCopyWith<$Res> {
  factory _$$EnquiriesStateLoadedImplCopyWith(_$EnquiriesStateLoadedImpl value,
          $Res Function(_$EnquiriesStateLoadedImpl) then) =
      __$$EnquiriesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Activity> activities, Paginator? paginator});

  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class __$$EnquiriesStateLoadedImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateLoadedImpl>
    implements _$$EnquiriesStateLoadedImplCopyWith<$Res> {
  __$$EnquiriesStateLoadedImplCopyWithImpl(_$EnquiriesStateLoadedImpl _value,
      $Res Function(_$EnquiriesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? paginator = freezed,
  }) {
    return _then(_$EnquiriesStateLoadedImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_value.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.paginator!, (value) {
      return _then(_value.copyWith(paginator: value));
    });
  }
}

/// @nodoc

class _$EnquiriesStateLoadedImpl implements _EnquiriesStateLoaded {
  const _$EnquiriesStateLoadedImpl(
      {required final List<Activity> activities, this.paginator})
      : _activities = activities;

  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Paginator? paginator;

  @override
  String toString() {
    return 'EnquiriesState.loaded(activities: $activities, paginator: $paginator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activities), paginator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquiriesStateLoadedImplCopyWith<_$EnquiriesStateLoadedImpl>
      get copyWith =>
          __$$EnquiriesStateLoadedImplCopyWithImpl<_$EnquiriesStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(activities, paginator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(activities, paginator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(activities, paginator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _EnquiriesStateLoaded implements EnquiriesState {
  const factory _EnquiriesStateLoaded(
      {required final List<Activity> activities,
      final Paginator? paginator}) = _$EnquiriesStateLoadedImpl;

  List<Activity> get activities;
  Paginator? get paginator;
  @JsonKey(ignore: true)
  _$$EnquiriesStateLoadedImplCopyWith<_$EnquiriesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnquiriesStateErrorImplCopyWith<$Res> {
  factory _$$EnquiriesStateErrorImplCopyWith(_$EnquiriesStateErrorImpl value,
          $Res Function(_$EnquiriesStateErrorImpl) then) =
      __$$EnquiriesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$EnquiriesStateErrorImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateErrorImpl>
    implements _$$EnquiriesStateErrorImplCopyWith<$Res> {
  __$$EnquiriesStateErrorImplCopyWithImpl(_$EnquiriesStateErrorImpl _value,
      $Res Function(_$EnquiriesStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EnquiriesStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnquiriesStateErrorImpl implements _EnquiriesStateError {
  const _$EnquiriesStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EnquiriesState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquiriesStateErrorImplCopyWith<_$EnquiriesStateErrorImpl> get copyWith =>
      __$$EnquiriesStateErrorImplCopyWithImpl<_$EnquiriesStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMore,
    required TResult Function(List<Activity> activities, Paginator? paginator)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMore,
    TResult? Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMore,
    TResult Function(List<Activity> activities, Paginator? paginator)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnquiriesStateInitial value) initial,
    required TResult Function(EnquiriesStateLoading value) loading,
    required TResult Function(_EnquiriesStateLoadingMore value) loadingMore,
    required TResult Function(_EnquiriesStateLoaded value) loaded,
    required TResult Function(_EnquiriesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnquiriesStateInitial value)? initial,
    TResult? Function(EnquiriesStateLoading value)? loading,
    TResult? Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult? Function(_EnquiriesStateLoaded value)? loaded,
    TResult? Function(_EnquiriesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnquiriesStateInitial value)? initial,
    TResult Function(EnquiriesStateLoading value)? loading,
    TResult Function(_EnquiriesStateLoadingMore value)? loadingMore,
    TResult Function(_EnquiriesStateLoaded value)? loaded,
    TResult Function(_EnquiriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EnquiriesStateError implements EnquiriesState {
  const factory _EnquiriesStateError({required final String errorMessage}) =
      _$EnquiriesStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$EnquiriesStateErrorImplCopyWith<_$EnquiriesStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
