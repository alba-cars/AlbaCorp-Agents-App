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
  @JsonKey(readValue: readUserId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(readValue: readPropertyListId)
  String? get propertyListId => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLead)
  Lead? get lead => throw _privateConstructorUsedError;
  @JsonKey(readValue: readActivityWeight)
  double get activityWeight => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(readValue: readDate)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCompletedDate)
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(readValue: readIsScheduled)
  bool? get isScheduled => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(readValue: readPreferredLanguages)
  List<String>? get preferredLanguages => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(readValue: readIsInterested)
  bool? get isInterested => throw _privateConstructorUsedError;
  @JsonKey(readValue: readOffplanId)
  String? get offplanId => throw _privateConstructorUsedError;
  @JsonKey(readValue: readPropertyType)
  String? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(readValue: readOverdueAt)
  DateTime? get overdueAt => throw _privateConstructorUsedError;
  Property? get property_list => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCreatedAt)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: readUpdatedAt)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

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
      @JsonKey(readValue: readUserId) String userId,
      @JsonKey(readValue: readPropertyListId) String? propertyListId,
      @JsonKey(readValue: readLead) Lead? lead,
      @JsonKey(readValue: readActivityWeight) double activityWeight,
      String type,
      String? description,
      @JsonKey(readValue: readDate) DateTime date,
      @JsonKey(readValue: readCompletedDate) DateTime? completedDate,
      @JsonKey(readValue: readIsScheduled) bool? isScheduled,
      String status,
      @JsonKey(readValue: readPreferredLanguages)
      List<String>? preferredLanguages,
      String? notes,
      List<String>? tags,
      @JsonKey(readValue: readIsInterested) bool? isInterested,
      @JsonKey(readValue: readOffplanId) String? offplanId,
      @JsonKey(readValue: readPropertyType) String? propertyType,
      @JsonKey(readValue: readOverdueAt) DateTime? overdueAt,
      Property? property_list,
      @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) DateTime? updatedAt,
      String? summary});

  $LeadCopyWith<$Res>? get lead;
  $PropertyCopyWith<$Res>? get property_list;
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
    Object? activityWeight = null,
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
    Object? property_list = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? summary = freezed,
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
      activityWeight: null == activityWeight
          ? _value.activityWeight
          : activityWeight // ignore: cast_nullable_to_non_nullable
              as double,
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
      property_list: freezed == property_list
          ? _value.property_list
          : property_list // ignore: cast_nullable_to_non_nullable
              as Property?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get property_list {
    if (_value.property_list == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_value.property_list!, (value) {
      return _then(_value.copyWith(property_list: value) as $Val);
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
      @JsonKey(readValue: readUserId) String userId,
      @JsonKey(readValue: readPropertyListId) String? propertyListId,
      @JsonKey(readValue: readLead) Lead? lead,
      @JsonKey(readValue: readActivityWeight) double activityWeight,
      String type,
      String? description,
      @JsonKey(readValue: readDate) DateTime date,
      @JsonKey(readValue: readCompletedDate) DateTime? completedDate,
      @JsonKey(readValue: readIsScheduled) bool? isScheduled,
      String status,
      @JsonKey(readValue: readPreferredLanguages)
      List<String>? preferredLanguages,
      String? notes,
      List<String>? tags,
      @JsonKey(readValue: readIsInterested) bool? isInterested,
      @JsonKey(readValue: readOffplanId) String? offplanId,
      @JsonKey(readValue: readPropertyType) String? propertyType,
      @JsonKey(readValue: readOverdueAt) DateTime? overdueAt,
      Property? property_list,
      @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) DateTime? updatedAt,
      String? summary});

  @override
  $LeadCopyWith<$Res>? get lead;
  @override
  $PropertyCopyWith<$Res>? get property_list;
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
    Object? activityWeight = null,
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
    Object? property_list = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? summary = freezed,
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
      activityWeight: null == activityWeight
          ? _value.activityWeight
          : activityWeight // ignore: cast_nullable_to_non_nullable
              as double,
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
      property_list: freezed == property_list
          ? _value.property_list
          : property_list // ignore: cast_nullable_to_non_nullable
              as Property?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl with DiagnosticableTreeMixin implements _Activity {
  _$ActivityImpl(
      {required this.id,
      @JsonKey(readValue: readUserId) required this.userId,
      @JsonKey(readValue: readPropertyListId) this.propertyListId,
      @JsonKey(readValue: readLead) this.lead,
      @JsonKey(readValue: readActivityWeight) this.activityWeight = 0,
      required this.type,
      this.description,
      @JsonKey(readValue: readDate) required this.date,
      @JsonKey(readValue: readCompletedDate) this.completedDate,
      @JsonKey(readValue: readIsScheduled) this.isScheduled,
      this.status = 'Pending',
      @JsonKey(readValue: readPreferredLanguages)
      final List<String>? preferredLanguages,
      this.notes,
      final List<String>? tags,
      @JsonKey(readValue: readIsInterested) this.isInterested,
      @JsonKey(readValue: readOffplanId) this.offplanId,
      @JsonKey(readValue: readPropertyType) this.propertyType,
      @JsonKey(readValue: readOverdueAt) this.overdueAt,
      this.property_list,
      @JsonKey(readValue: readCreatedAt) this.createdAt,
      @JsonKey(readValue: readUpdatedAt) this.updatedAt,
      this.summary})
      : _preferredLanguages = preferredLanguages,
        _tags = tags;

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(readValue: readUserId)
  final String userId;
  @override
  @JsonKey(readValue: readPropertyListId)
  final String? propertyListId;
  @override
  @JsonKey(readValue: readLead)
  final Lead? lead;
  @override
  @JsonKey(readValue: readActivityWeight)
  final double activityWeight;
  @override
  final String type;
  @override
  final String? description;
  @override
  @JsonKey(readValue: readDate)
  final DateTime date;
  @override
  @JsonKey(readValue: readCompletedDate)
  final DateTime? completedDate;
  @override
  @JsonKey(readValue: readIsScheduled)
  final bool? isScheduled;
  @override
  @JsonKey()
  final String status;
  final List<String>? _preferredLanguages;
  @override
  @JsonKey(readValue: readPreferredLanguages)
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
  @JsonKey(readValue: readIsInterested)
  final bool? isInterested;
  @override
  @JsonKey(readValue: readOffplanId)
  final String? offplanId;
  @override
  @JsonKey(readValue: readPropertyType)
  final String? propertyType;
  @override
  @JsonKey(readValue: readOverdueAt)
  final DateTime? overdueAt;
  @override
  final Property? property_list;
  @override
  @JsonKey(readValue: readCreatedAt)
  final DateTime? createdAt;
  @override
  @JsonKey(readValue: readUpdatedAt)
  final DateTime? updatedAt;
  @override
  final String? summary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Activity(id: $id, userId: $userId, propertyListId: $propertyListId, lead: $lead, activityWeight: $activityWeight, type: $type, description: $description, date: $date, completedDate: $completedDate, isScheduled: $isScheduled, status: $status, preferredLanguages: $preferredLanguages, notes: $notes, tags: $tags, isInterested: $isInterested, offplanId: $offplanId, propertyType: $propertyType, overdueAt: $overdueAt, property_list: $property_list, createdAt: $createdAt, updatedAt: $updatedAt, summary: $summary)';
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
      ..add(DiagnosticsProperty('activityWeight', activityWeight))
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
      ..add(DiagnosticsProperty('property_list', property_list))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('summary', summary));
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
            (identical(other.activityWeight, activityWeight) ||
                other.activityWeight == activityWeight) &&
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
            (identical(other.property_list, property_list) ||
                other.property_list == property_list) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        propertyListId,
        lead,
        activityWeight,
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
        property_list,
        createdAt,
        updatedAt,
        summary
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
      @JsonKey(readValue: readUserId) required final String userId,
      @JsonKey(readValue: readPropertyListId) final String? propertyListId,
      @JsonKey(readValue: readLead) final Lead? lead,
      @JsonKey(readValue: readActivityWeight) final double activityWeight,
      required final String type,
      final String? description,
      @JsonKey(readValue: readDate) required final DateTime date,
      @JsonKey(readValue: readCompletedDate) final DateTime? completedDate,
      @JsonKey(readValue: readIsScheduled) final bool? isScheduled,
      final String status,
      @JsonKey(readValue: readPreferredLanguages)
      final List<String>? preferredLanguages,
      final String? notes,
      final List<String>? tags,
      @JsonKey(readValue: readIsInterested) final bool? isInterested,
      @JsonKey(readValue: readOffplanId) final String? offplanId,
      @JsonKey(readValue: readPropertyType) final String? propertyType,
      @JsonKey(readValue: readOverdueAt) final DateTime? overdueAt,
      final Property? property_list,
      @JsonKey(readValue: readCreatedAt) final DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) final DateTime? updatedAt,
      final String? summary}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(readValue: readUserId)
  String get userId;
  @override
  @JsonKey(readValue: readPropertyListId)
  String? get propertyListId;
  @override
  @JsonKey(readValue: readLead)
  Lead? get lead;
  @override
  @JsonKey(readValue: readActivityWeight)
  double get activityWeight;
  @override
  String get type;
  @override
  String? get description;
  @override
  @JsonKey(readValue: readDate)
  DateTime get date;
  @override
  @JsonKey(readValue: readCompletedDate)
  DateTime? get completedDate;
  @override
  @JsonKey(readValue: readIsScheduled)
  bool? get isScheduled;
  @override
  String get status;
  @override
  @JsonKey(readValue: readPreferredLanguages)
  List<String>? get preferredLanguages;
  @override
  String? get notes;
  @override
  List<String>? get tags;
  @override
  @JsonKey(readValue: readIsInterested)
  bool? get isInterested;
  @override
  @JsonKey(readValue: readOffplanId)
  String? get offplanId;
  @override
  @JsonKey(readValue: readPropertyType)
  String? get propertyType;
  @override
  @JsonKey(readValue: readOverdueAt)
  DateTime? get overdueAt;
  @override
  Property? get property_list;
  @override
  @JsonKey(readValue: readCreatedAt)
  DateTime? get createdAt;
  @override
  @JsonKey(readValue: readUpdatedAt)
  DateTime? get updatedAt;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
