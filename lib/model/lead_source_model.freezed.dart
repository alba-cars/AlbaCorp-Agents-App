// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadSource _$LeadSourceFromJson(Map<String, dynamic> json) {
  return _LeadSource.fromJson(json);
}

/// @nodoc
mixin _$LeadSource {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceCopyWith<LeadSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceCopyWith<$Res> {
  factory $LeadSourceCopyWith(
          LeadSource value, $Res Function(LeadSource) then) =
      _$LeadSourceCopyWithImpl<$Res, LeadSource>;
  @useResult
  $Res call({String id, String name, String key});
}

/// @nodoc
class _$LeadSourceCopyWithImpl<$Res, $Val extends LeadSource>
    implements $LeadSourceCopyWith<$Res> {
  _$LeadSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadSourceImplCopyWith<$Res>
    implements $LeadSourceCopyWith<$Res> {
  factory _$$LeadSourceImplCopyWith(
          _$LeadSourceImpl value, $Res Function(_$LeadSourceImpl) then) =
      __$$LeadSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String key});
}

/// @nodoc
class __$$LeadSourceImplCopyWithImpl<$Res>
    extends _$LeadSourceCopyWithImpl<$Res, _$LeadSourceImpl>
    implements _$$LeadSourceImplCopyWith<$Res> {
  __$$LeadSourceImplCopyWithImpl(
      _$LeadSourceImpl _value, $Res Function(_$LeadSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
  }) {
    return _then(_$LeadSourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadSourceImpl with DiagnosticableTreeMixin implements _LeadSource {
  const _$LeadSourceImpl(
      {required this.id, required this.name, required this.key});

  factory _$LeadSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadSourceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeadSource(id: $id, name: $name, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeadSource'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceImplCopyWith<_$LeadSourceImpl> get copyWith =>
      __$$LeadSourceImplCopyWithImpl<_$LeadSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadSourceImplToJson(
      this,
    );
  }
}

abstract class _LeadSource implements LeadSource {
  const factory _LeadSource(
      {required final String id,
      required final String name,
      required final String key}) = _$LeadSourceImpl;

  factory _LeadSource.fromJson(Map<String, dynamic> json) =
      _$LeadSourceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceImplCopyWith<_$LeadSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
