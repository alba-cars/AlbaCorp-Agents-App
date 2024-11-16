// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_change_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadSourceChangeLogModel _$LeadSourceChangeLogModelFromJson(
    Map<String, dynamic> json) {
  return _LeadSourceChangeLogModel.fromJson(json);
}

/// @nodoc
mixin _$LeadSourceChangeLogModel {
  String get id => throw _privateConstructorUsedError;
  LeadSource get newLead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceChangeLogModelCopyWith<LeadSourceChangeLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceChangeLogModelCopyWith<$Res> {
  factory $LeadSourceChangeLogModelCopyWith(LeadSourceChangeLogModel value,
          $Res Function(LeadSourceChangeLogModel) then) =
      _$LeadSourceChangeLogModelCopyWithImpl<$Res, LeadSourceChangeLogModel>;
  @useResult
  $Res call({String id, LeadSource newLead});

  $LeadSourceCopyWith<$Res> get newLead;
}

/// @nodoc
class _$LeadSourceChangeLogModelCopyWithImpl<$Res,
        $Val extends LeadSourceChangeLogModel>
    implements $LeadSourceChangeLogModelCopyWith<$Res> {
  _$LeadSourceChangeLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newLead = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      newLead: null == newLead
          ? _value.newLead
          : newLead // ignore: cast_nullable_to_non_nullable
              as LeadSource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadSourceCopyWith<$Res> get newLead {
    return $LeadSourceCopyWith<$Res>(_value.newLead, (value) {
      return _then(_value.copyWith(newLead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadSourceChangeLogModelImplCopyWith<$Res>
    implements $LeadSourceChangeLogModelCopyWith<$Res> {
  factory _$$LeadSourceChangeLogModelImplCopyWith(
          _$LeadSourceChangeLogModelImpl value,
          $Res Function(_$LeadSourceChangeLogModelImpl) then) =
      __$$LeadSourceChangeLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, LeadSource newLead});

  @override
  $LeadSourceCopyWith<$Res> get newLead;
}

/// @nodoc
class __$$LeadSourceChangeLogModelImplCopyWithImpl<$Res>
    extends _$LeadSourceChangeLogModelCopyWithImpl<$Res,
        _$LeadSourceChangeLogModelImpl>
    implements _$$LeadSourceChangeLogModelImplCopyWith<$Res> {
  __$$LeadSourceChangeLogModelImplCopyWithImpl(
      _$LeadSourceChangeLogModelImpl _value,
      $Res Function(_$LeadSourceChangeLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newLead = null,
  }) {
    return _then(_$LeadSourceChangeLogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      newLead: null == newLead
          ? _value.newLead
          : newLead // ignore: cast_nullable_to_non_nullable
              as LeadSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadSourceChangeLogModelImpl implements _LeadSourceChangeLogModel {
  const _$LeadSourceChangeLogModelImpl(
      {required this.id, required this.newLead});

  factory _$LeadSourceChangeLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadSourceChangeLogModelImplFromJson(json);

  @override
  final String id;
  @override
  final LeadSource newLead;

  @override
  String toString() {
    return 'LeadSourceChangeLogModel(id: $id, newLead: $newLead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceChangeLogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.newLead, newLead) || other.newLead == newLead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, newLead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceChangeLogModelImplCopyWith<_$LeadSourceChangeLogModelImpl>
      get copyWith => __$$LeadSourceChangeLogModelImplCopyWithImpl<
          _$LeadSourceChangeLogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadSourceChangeLogModelImplToJson(
      this,
    );
  }
}

abstract class _LeadSourceChangeLogModel implements LeadSourceChangeLogModel {
  const factory _LeadSourceChangeLogModel(
      {required final String id,
      required final LeadSource newLead}) = _$LeadSourceChangeLogModelImpl;

  factory _LeadSourceChangeLogModel.fromJson(Map<String, dynamic> json) =
      _$LeadSourceChangeLogModelImpl.fromJson;

  @override
  String get id;
  @override
  LeadSource get newLead;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceChangeLogModelImplCopyWith<_$LeadSourceChangeLogModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
