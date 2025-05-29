// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {
  String? get id;
  String get title;
  String? get subTitle;
  String? get notificationId;
  bool get isRead;
  bool get requiresAction;
  String get type;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  String? get leadId;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      _$NotificationModelCopyWithImpl<NotificationModel>(
          this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.requiresAction, requiresAction) ||
                other.requiresAction == requiresAction) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.leadId, leadId) || other.leadId == leadId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subTitle,
      notificationId, isRead, requiresAction, type, createdAt, leadId);

  @override
  String toString() {
    return 'NotificationModel(id: $id, title: $title, subTitle: $subTitle, notificationId: $notificationId, isRead: $isRead, requiresAction: $requiresAction, type: $type, createdAt: $createdAt, leadId: $leadId)';
  }
}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) _then) =
      _$NotificationModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String title,
      String? subTitle,
      String? notificationId,
      bool isRead,
      bool requiresAction,
      String type,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      String? leadId});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subTitle = freezed,
    Object? notificationId = freezed,
    Object? isRead = null,
    Object? requiresAction = null,
    Object? type = null,
    Object? createdAt = freezed,
    Object? leadId = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: freezed == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationId: freezed == notificationId
          ? _self.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresAction: null == requiresAction
          ? _self.requiresAction
          : requiresAction // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leadId: freezed == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationModel implements NotificationModel {
  const _NotificationModel(
      {this.id,
      required this.title,
      this.subTitle,
      this.notificationId,
      this.isRead = false,
      this.requiresAction = false,
      this.type = 'Normal',
      @JsonKey(name: 'createdAt') this.createdAt,
      this.leadId});
  factory _NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String? subTitle;
  @override
  final String? notificationId;
  @override
  @JsonKey()
  final bool isRead;
  @override
  @JsonKey()
  final bool requiresAction;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  final String? leadId;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.requiresAction, requiresAction) ||
                other.requiresAction == requiresAction) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.leadId, leadId) || other.leadId == leadId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subTitle,
      notificationId, isRead, requiresAction, type, createdAt, leadId);

  @override
  String toString() {
    return 'NotificationModel(id: $id, title: $title, subTitle: $subTitle, notificationId: $notificationId, isRead: $isRead, requiresAction: $requiresAction, type: $type, createdAt: $createdAt, leadId: $leadId)';
  }
}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(
          _NotificationModel value, $Res Function(_NotificationModel) _then) =
      __$NotificationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String? subTitle,
      String? notificationId,
      bool isRead,
      bool requiresAction,
      String type,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      String? leadId});
}

/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subTitle = freezed,
    Object? notificationId = freezed,
    Object? isRead = null,
    Object? requiresAction = null,
    Object? type = null,
    Object? createdAt = freezed,
    Object? leadId = freezed,
  }) {
    return _then(_NotificationModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: freezed == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationId: freezed == notificationId
          ? _self.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresAction: null == requiresAction
          ? _self.requiresAction
          : requiresAction // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leadId: freezed == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
