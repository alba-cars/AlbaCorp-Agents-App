// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String? get propertyListId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  Lead? get lead => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get completedBy => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime? get completedDate => throw _privateConstructorUsedError;
  bool? get isScheduled => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String>? get preferredLanguages => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  bool? get isInterested => throw _privateConstructorUsedError;
  String? get offplanId => throw _privateConstructorUsedError;
  String? get propertyType => throw _privateConstructorUsedError;
  DateTime? get overdueAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String? propertyListId,
      @JsonKey(name: 'user') Lead? lead,
      String? createdBy,
      String? completedBy,
      String type,
      String? description,
      DateTime date,
      DateTime? completedDate,
      bool? isScheduled,
      String status,
      List<String>? preferredLanguages,
      String? notes,
      List<String>? tags,
      bool? isInterested,
      String? offplanId,
      String? propertyType,
      DateTime? overdueAt,
      @JsonKey(ignore: true) DateTime? createdAt,
      @JsonKey(ignore: true) DateTime? updatedAt});

  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyListId = freezed,
    Object? lead = freezed,
    Object? createdBy = freezed,
    Object? completedBy = freezed,
    Object? type = null,
    Object? description = freezed,
    Object? date = null,
    Object? completedDate = freezed,
    Object? isScheduled = freezed,
    Object? status = null,
    Object? preferredLanguages = freezed,
    Object? notes = freezed,
    Object? tags = freezed,
    Object? isInterested = freezed,
    Object? offplanId = freezed,
    Object? propertyType = freezed,
    Object? overdueAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyListId: freezed == propertyListId
          ? _value.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _value.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isScheduled: freezed == isScheduled
          ? _value.isScheduled
          : isScheduled // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      preferredLanguages: freezed == preferredLanguages
          ? _value.preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isInterested: freezed == isInterested
          ? _value.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      offplanId: freezed == offplanId
          ? _value.offplanId
          : offplanId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      overdueAt: freezed == overdueAt
          ? _value.overdueAt
          : overdueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_value.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.lead!, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String? propertyListId,
      @JsonKey(name: 'user') Lead? lead,
      String? createdBy,
      String? completedBy,
      String type,
      String? description,
      DateTime date,
      DateTime? completedDate,
      bool? isScheduled,
      String status,
      List<String>? preferredLanguages,
      String? notes,
      List<String>? tags,
      bool? isInterested,
      String? offplanId,
      String? propertyType,
      DateTime? overdueAt,
      @JsonKey(ignore: true) DateTime? createdAt,
      @JsonKey(ignore: true) DateTime? updatedAt});

  @override
  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyListId = freezed,
    Object? lead = freezed,
    Object? createdBy = freezed,
    Object? completedBy = freezed,
    Object? type = null,
    Object? description = freezed,
    Object? date = null,
    Object? completedDate = freezed,
    Object? isScheduled = freezed,
    Object? status = null,
    Object? preferredLanguages = freezed,
    Object? notes = freezed,
    Object? tags = freezed,
    Object? isInterested = freezed,
    Object? offplanId = freezed,
    Object? propertyType = freezed,
    Object? overdueAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyListId: freezed == propertyListId
          ? _value.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _value.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isScheduled: freezed == isScheduled
          ? _value.isScheduled
          : isScheduled // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      preferredLanguages: freezed == preferredLanguages
          ? _value._preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isInterested: freezed == isInterested
          ? _value.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      offplanId: freezed == offplanId
          ? _value.offplanId
          : offplanId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      overdueAt: freezed == overdueAt
          ? _value.overdueAt
          : overdueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl with DiagnosticableTreeMixin implements _Activity {
  _$ActivityImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      this.propertyListId,
      @JsonKey(name: 'user') this.lead,
      this.createdBy,
      this.completedBy,
      required this.type,
      this.description,
      required this.date,
      this.completedDate,
      this.isScheduled,
      this.status = 'Pending',
      final List<String>? preferredLanguages,
      this.notes,
      final List<String>? tags,
      this.isInterested,
      this.offplanId,
      this.propertyType,
      this.overdueAt,
      @JsonKey(ignore: true) this.createdAt,
      @JsonKey(ignore: true) this.updatedAt})
      : _preferredLanguages = preferredLanguages,
        _tags = tags;

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String? propertyListId;
  @override
  @JsonKey(name: 'user')
  final Lead? lead;
  @override
  final String? createdBy;
  @override
  final String? completedBy;
  @override
  final String type;
  @override
  final String? description;
  @override
  final DateTime date;
  @override
  final DateTime? completedDate;
  @override
  final bool? isScheduled;
  @override
  @JsonKey()
  final String status;
  final List<String>? _preferredLanguages;
  @override
  List<String>? get preferredLanguages {
    final value = _preferredLanguages;
    if (value == null) return null;
    if (_preferredLanguages is EqualUnmodifiableListView)
      return _preferredLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isInterested;
  @override
  final String? offplanId;
  @override
  final String? propertyType;
  @override
  final DateTime? overdueAt;
  @override
  @JsonKey(ignore: true)
  final DateTime? createdAt;
  @override
  @JsonKey(ignore: true)
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Activity(id: $id, userId: $userId, propertyListId: $propertyListId, lead: $lead, createdBy: $createdBy, completedBy: $completedBy, type: $type, description: $description, date: $date, completedDate: $completedDate, isScheduled: $isScheduled, status: $status, preferredLanguages: $preferredLanguages, notes: $notes, tags: $tags, isInterested: $isInterested, offplanId: $offplanId, propertyType: $propertyType, overdueAt: $overdueAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Activity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('propertyListId', propertyListId))
      ..add(DiagnosticsProperty('lead', lead))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('completedBy', completedBy))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('completedDate', completedDate))
      ..add(DiagnosticsProperty('isScheduled', isScheduled))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('preferredLanguages', preferredLanguages))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('isInterested', isInterested))
      ..add(DiagnosticsProperty('offplanId', offplanId))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('overdueAt', overdueAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyListId, propertyListId) ||
                other.propertyListId == propertyListId) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.completedBy, completedBy) ||
                other.completedBy == completedBy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.isScheduled, isScheduled) ||
                other.isScheduled == isScheduled) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._preferredLanguages, _preferredLanguages) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isInterested, isInterested) ||
                other.isInterested == isInterested) &&
            (identical(other.offplanId, offplanId) ||
                other.offplanId == offplanId) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.overdueAt, overdueAt) ||
                other.overdueAt == overdueAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        propertyListId,
        lead,
        createdBy,
        completedBy,
        type,
        description,
        date,
        completedDate,
        isScheduled,
        status,
        const DeepCollectionEquality().hash(_preferredLanguages),
        notes,
        const DeepCollectionEquality().hash(_tags),
        isInterested,
        offplanId,
        propertyType,
        overdueAt,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  factory _Activity(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      final String? propertyListId,
      @JsonKey(name: 'user') final Lead? lead,
      final String? createdBy,
      final String? completedBy,
      required final String type,
      final String? description,
      required final DateTime date,
      final DateTime? completedDate,
      final bool? isScheduled,
      final String status,
      final List<String>? preferredLanguages,
      final String? notes,
      final List<String>? tags,
      final bool? isInterested,
      final String? offplanId,
      final String? propertyType,
      final DateTime? overdueAt,
      @JsonKey(ignore: true) final DateTime? createdAt,
      @JsonKey(ignore: true) final DateTime? updatedAt}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String? get propertyListId;
  @override
  @JsonKey(name: 'user')
  Lead? get lead;
  @override
  String? get createdBy;
  @override
  String? get completedBy;
  @override
  String get type;
  @override
  String? get description;
  @override
  DateTime get date;
  @override
  DateTime? get completedDate;
  @override
  bool? get isScheduled;
  @override
  String get status;
  @override
  List<String>? get preferredLanguages;
  @override
  String? get notes;
  @override
  List<String>? get tags;
  @override
  bool? get isInterested;
  @override
  String? get offplanId;
  @override
  String? get propertyType;
  @override
  DateTime? get overdueAt;
  @override
  @JsonKey(ignore: true)
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
