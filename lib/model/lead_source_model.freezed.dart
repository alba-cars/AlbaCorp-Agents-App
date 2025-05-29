// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadSource implements DiagnosticableTreeMixin {
  String get id;
  String get name;

  /// Create a copy of LeadSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadSourceCopyWith<LeadSource> get copyWith =>
      _$LeadSourceCopyWithImpl<LeadSource>(this as LeadSource, _$identity);

  /// Serializes this LeadSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeadSource'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeadSource(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $LeadSourceCopyWith<$Res> {
  factory $LeadSourceCopyWith(
          LeadSource value, $Res Function(LeadSource) _then) =
      _$LeadSourceCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$LeadSourceCopyWithImpl<$Res> implements $LeadSourceCopyWith<$Res> {
  _$LeadSourceCopyWithImpl(this._self, this._then);

  final LeadSource _self;
  final $Res Function(LeadSource) _then;

  /// Create a copy of LeadSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LeadSource with DiagnosticableTreeMixin implements LeadSource {
  const _LeadSource({required this.id, required this.name});
  factory _LeadSource.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceFromJson(json);

  @override
  final String id;
  @override
  final String name;

  /// Create a copy of LeadSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadSourceCopyWith<_LeadSource> get copyWith =>
      __$LeadSourceCopyWithImpl<_LeadSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadSourceToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeadSource'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeadSource(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$LeadSourceCopyWith<$Res>
    implements $LeadSourceCopyWith<$Res> {
  factory _$LeadSourceCopyWith(
          _LeadSource value, $Res Function(_LeadSource) _then) =
      __$LeadSourceCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$LeadSourceCopyWithImpl<$Res> implements _$LeadSourceCopyWith<$Res> {
  __$LeadSourceCopyWithImpl(this._self, this._then);

  final _LeadSource _self;
  final $Res Function(_LeadSource) _then;

  /// Create a copy of LeadSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_LeadSource(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
