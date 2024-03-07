// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadsState {
  List<Lead> get leads => throw _privateConstructorUsedError;
  Status get getLeadsStatus => throw _privateConstructorUsedError;
  String? get getLeadsError => throw _privateConstructorUsedError;
  Paginator? get leadsPaginator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadsStateCopyWith<LeadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadsStateCopyWith<$Res> {
  factory $LeadsStateCopyWith(
          LeadsState value, $Res Function(LeadsState) then) =
      _$LeadsStateCopyWithImpl<$Res, LeadsState>;
  @useResult
  $Res call(
      {List<Lead> leads,
      Status getLeadsStatus,
      String? getLeadsError,
      Paginator? leadsPaginator});

  $PaginatorCopyWith<$Res>? get leadsPaginator;
}

/// @nodoc
class _$LeadsStateCopyWithImpl<$Res, $Val extends LeadsState>
    implements $LeadsStateCopyWith<$Res> {
  _$LeadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? getLeadsError = freezed,
    Object? leadsPaginator = freezed,
  }) {
    return _then(_value.copyWith(
      leads: null == leads
          ? _value.leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _value.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getLeadsError: freezed == getLeadsError
          ? _value.getLeadsError
          : getLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsPaginator: freezed == leadsPaginator
          ? _value.leadsPaginator
          : leadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get leadsPaginator {
    if (_value.leadsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.leadsPaginator!, (value) {
      return _then(_value.copyWith(leadsPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadsStateImplCopyWith<$Res>
    implements $LeadsStateCopyWith<$Res> {
  factory _$$LeadsStateImplCopyWith(
          _$LeadsStateImpl value, $Res Function(_$LeadsStateImpl) then) =
      __$$LeadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Lead> leads,
      Status getLeadsStatus,
      String? getLeadsError,
      Paginator? leadsPaginator});

  @override
  $PaginatorCopyWith<$Res>? get leadsPaginator;
}

/// @nodoc
class __$$LeadsStateImplCopyWithImpl<$Res>
    extends _$LeadsStateCopyWithImpl<$Res, _$LeadsStateImpl>
    implements _$$LeadsStateImplCopyWith<$Res> {
  __$$LeadsStateImplCopyWithImpl(
      _$LeadsStateImpl _value, $Res Function(_$LeadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? getLeadsError = freezed,
    Object? leadsPaginator = freezed,
  }) {
    return _then(_$LeadsStateImpl(
      leads: null == leads
          ? _value._leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _value.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getLeadsError: freezed == getLeadsError
          ? _value.getLeadsError
          : getLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsPaginator: freezed == leadsPaginator
          ? _value.leadsPaginator
          : leadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
    ));
  }
}

/// @nodoc

class _$LeadsStateImpl implements _LeadsState {
  const _$LeadsStateImpl(
      {final List<Lead> leads = const [],
      this.getLeadsStatus = Status.init,
      this.getLeadsError,
      this.leadsPaginator})
      : _leads = leads;

  final List<Lead> _leads;
  @override
  @JsonKey()
  List<Lead> get leads {
    if (_leads is EqualUnmodifiableListView) return _leads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leads);
  }

  @override
  @JsonKey()
  final Status getLeadsStatus;
  @override
  final String? getLeadsError;
  @override
  final Paginator? leadsPaginator;

  @override
  String toString() {
    return 'LeadsState(leads: $leads, getLeadsStatus: $getLeadsStatus, getLeadsError: $getLeadsError, leadsPaginator: $leadsPaginator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadsStateImpl &&
            const DeepCollectionEquality().equals(other._leads, _leads) &&
            (identical(other.getLeadsStatus, getLeadsStatus) ||
                other.getLeadsStatus == getLeadsStatus) &&
            (identical(other.getLeadsError, getLeadsError) ||
                other.getLeadsError == getLeadsError) &&
            (identical(other.leadsPaginator, leadsPaginator) ||
                other.leadsPaginator == leadsPaginator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leads),
      getLeadsStatus,
      getLeadsError,
      leadsPaginator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadsStateImplCopyWith<_$LeadsStateImpl> get copyWith =>
      __$$LeadsStateImplCopyWithImpl<_$LeadsStateImpl>(this, _$identity);
}

abstract class _LeadsState implements LeadsState {
  const factory _LeadsState(
      {final List<Lead> leads,
      final Status getLeadsStatus,
      final String? getLeadsError,
      final Paginator? leadsPaginator}) = _$LeadsStateImpl;

  @override
  List<Lead> get leads;
  @override
  Status get getLeadsStatus;
  @override
  String? get getLeadsError;
  @override
  Paginator? get leadsPaginator;
  @override
  @JsonKey(ignore: true)
  _$$LeadsStateImplCopyWith<_$LeadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
