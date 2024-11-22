// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lead _$LeadFromJson(Map<String, dynamic> json) {
  return _Lead.fromJson(json);
}

/// @nodoc
mixin _$Lead {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(readValue: readFirstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLastName)
  String get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(readValue: readProviderId)
  String? get providerId => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLeadSource)
  String get leadSource => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLeadStatus)
  LeadStatus? get leadStatus => throw _privateConstructorUsedError;
  List<dynamic> get languages => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLastActivityType)
  String? get lastActivityType => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLastActivityDate)
  DateTime? get lastActivityDate => throw _privateConstructorUsedError;
  @JsonKey(readValue: readLastActivityIsComplete)
  bool get lastActivityIsComplete => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCreatedAt)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: readUpdatedAt)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCreatedBy)
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(readValue: readModifiedBy)
  String? get modifiedBy => throw _privateConstructorUsedError;
  Preference? get preference => throw _privateConstructorUsedError;
  @JsonKey(readValue: readPreferredLanguages)
  List<dynamic> get preferredLanguages => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCurrentAgent)
  Agent? get currentAgent => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(readValue: readDndStatus)
  bool get dndStatus => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCompletedActivityCount)
  int get completedActivityCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadCopyWith<Lead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadCopyWith<$Res> {
  factory $LeadCopyWith(Lead value, $Res Function(Lead) then) =
      _$LeadCopyWithImpl<$Res, Lead>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(readValue: readFirstName) String firstName,
      @JsonKey(readValue: readLastName) String lastName,
      String? email,
      String? phone,
      String? country,
      String? city,
      String? address,
      String? nationality,
      String? photo,
      String? role,
      @JsonKey(readValue: readProviderId) String? providerId,
      String? provider,
      bool active,
      @JsonKey(readValue: readLeadSource) String leadSource,
      @JsonKey(readValue: readLeadStatus) LeadStatus? leadStatus,
      List<dynamic> languages,
      @JsonKey(readValue: readLastActivityType) String? lastActivityType,
      @JsonKey(readValue: readLastActivityDate) DateTime? lastActivityDate,
      @JsonKey(readValue: readLastActivityIsComplete)
      bool lastActivityIsComplete,
      @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) DateTime? updatedAt,
      @JsonKey(readValue: readCreatedBy) String? createdBy,
      @JsonKey(readValue: readModifiedBy) String? modifiedBy,
      Preference? preference,
      @JsonKey(readValue: readPreferredLanguages)
      List<dynamic> preferredLanguages,
      @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
      String? notes,
      List<String> tags,
      @JsonKey(readValue: readDndStatus) bool dndStatus,
      @JsonKey(readValue: readCompletedActivityCount)
      int completedActivityCount});

  $PreferenceCopyWith<$Res>? get preference;
  $AgentCopyWith<$Res>? get currentAgent;
}

/// @nodoc
class _$LeadCopyWithImpl<$Res, $Val extends Lead>
    implements $LeadCopyWith<$Res> {
  _$LeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? nationality = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? providerId = freezed,
    Object? provider = freezed,
    Object? active = null,
    Object? leadSource = null,
    Object? leadStatus = freezed,
    Object? languages = null,
    Object? lastActivityType = freezed,
    Object? lastActivityDate = freezed,
    Object? lastActivityIsComplete = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? modifiedBy = freezed,
    Object? preference = freezed,
    Object? preferredLanguages = null,
    Object? currentAgent = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? dndStatus = null,
    Object? completedActivityCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: freezed == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as LeadStatus?,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastActivityType: freezed == lastActivityType
          ? _value.lastActivityType
          : lastActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivityIsComplete: null == lastActivityIsComplete
          ? _value.lastActivityIsComplete
          : lastActivityIsComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      preference: freezed == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as Preference?,
      preferredLanguages: null == preferredLanguages
          ? _value.preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentAgent: freezed == currentAgent
          ? _value.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dndStatus: null == dndStatus
          ? _value.dndStatus
          : dndStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      completedActivityCount: null == completedActivityCount
          ? _value.completedActivityCount
          : completedActivityCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreferenceCopyWith<$Res>? get preference {
    if (_value.preference == null) {
      return null;
    }

    return $PreferenceCopyWith<$Res>(_value.preference!, (value) {
      return _then(_value.copyWith(preference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get currentAgent {
    if (_value.currentAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.currentAgent!, (value) {
      return _then(_value.copyWith(currentAgent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadImplCopyWith<$Res> implements $LeadCopyWith<$Res> {
  factory _$$LeadImplCopyWith(
          _$LeadImpl value, $Res Function(_$LeadImpl) then) =
      __$$LeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(readValue: readFirstName) String firstName,
      @JsonKey(readValue: readLastName) String lastName,
      String? email,
      String? phone,
      String? country,
      String? city,
      String? address,
      String? nationality,
      String? photo,
      String? role,
      @JsonKey(readValue: readProviderId) String? providerId,
      String? provider,
      bool active,
      @JsonKey(readValue: readLeadSource) String leadSource,
      @JsonKey(readValue: readLeadStatus) LeadStatus? leadStatus,
      List<dynamic> languages,
      @JsonKey(readValue: readLastActivityType) String? lastActivityType,
      @JsonKey(readValue: readLastActivityDate) DateTime? lastActivityDate,
      @JsonKey(readValue: readLastActivityIsComplete)
      bool lastActivityIsComplete,
      @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) DateTime? updatedAt,
      @JsonKey(readValue: readCreatedBy) String? createdBy,
      @JsonKey(readValue: readModifiedBy) String? modifiedBy,
      Preference? preference,
      @JsonKey(readValue: readPreferredLanguages)
      List<dynamic> preferredLanguages,
      @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
      String? notes,
      List<String> tags,
      @JsonKey(readValue: readDndStatus) bool dndStatus,
      @JsonKey(readValue: readCompletedActivityCount)
      int completedActivityCount});

  @override
  $PreferenceCopyWith<$Res>? get preference;
  @override
  $AgentCopyWith<$Res>? get currentAgent;
}

/// @nodoc
class __$$LeadImplCopyWithImpl<$Res>
    extends _$LeadCopyWithImpl<$Res, _$LeadImpl>
    implements _$$LeadImplCopyWith<$Res> {
  __$$LeadImplCopyWithImpl(_$LeadImpl _value, $Res Function(_$LeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? nationality = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? providerId = freezed,
    Object? provider = freezed,
    Object? active = null,
    Object? leadSource = null,
    Object? leadStatus = freezed,
    Object? languages = null,
    Object? lastActivityType = freezed,
    Object? lastActivityDate = freezed,
    Object? lastActivityIsComplete = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? modifiedBy = freezed,
    Object? preference = freezed,
    Object? preferredLanguages = null,
    Object? currentAgent = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? dndStatus = null,
    Object? completedActivityCount = null,
  }) {
    return _then(_$LeadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: freezed == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as LeadStatus?,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastActivityType: freezed == lastActivityType
          ? _value.lastActivityType
          : lastActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivityIsComplete: null == lastActivityIsComplete
          ? _value.lastActivityIsComplete
          : lastActivityIsComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      preference: freezed == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as Preference?,
      preferredLanguages: null == preferredLanguages
          ? _value._preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentAgent: freezed == currentAgent
          ? _value.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dndStatus: null == dndStatus
          ? _value.dndStatus
          : dndStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      completedActivityCount: null == completedActivityCount
          ? _value.completedActivityCount
          : completedActivityCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadImpl extends _Lead with DiagnosticableTreeMixin {
  const _$LeadImpl(
      {@JsonKey(readValue: readId) required this.id,
      @JsonKey(readValue: readFirstName) required this.firstName,
      @JsonKey(readValue: readLastName) this.lastName = '',
      this.email,
      this.phone,
      this.country,
      this.city,
      this.address,
      this.nationality,
      this.photo,
      this.role,
      @JsonKey(readValue: readProviderId) this.providerId,
      this.provider,
      this.active = true,
      @JsonKey(readValue: readLeadSource) required this.leadSource,
      @JsonKey(readValue: readLeadStatus) this.leadStatus,
      final List<dynamic> languages = const [],
      @JsonKey(readValue: readLastActivityType) this.lastActivityType,
      @JsonKey(readValue: readLastActivityDate) this.lastActivityDate,
      @JsonKey(readValue: readLastActivityIsComplete)
      this.lastActivityIsComplete = false,
      @JsonKey(readValue: readCreatedAt) this.createdAt,
      @JsonKey(readValue: readUpdatedAt) this.updatedAt,
      @JsonKey(readValue: readCreatedBy) this.createdBy,
      @JsonKey(readValue: readModifiedBy) this.modifiedBy,
      this.preference,
      @JsonKey(readValue: readPreferredLanguages)
      final List<dynamic> preferredLanguages = const [],
      @JsonKey(readValue: readCurrentAgent) this.currentAgent,
      this.notes,
      final List<String> tags = const [],
      @JsonKey(readValue: readDndStatus) this.dndStatus = false,
      @JsonKey(readValue: readCompletedActivityCount)
      this.completedActivityCount = 0})
      : _languages = languages,
        _preferredLanguages = preferredLanguages,
        _tags = tags,
        super._();

  factory _$LeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadImplFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  @JsonKey(readValue: readFirstName)
  final String firstName;
  @override
  @JsonKey(readValue: readLastName)
  final String lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? nationality;
  @override
  final String? photo;
  @override
  final String? role;
  @override
  @JsonKey(readValue: readProviderId)
  final String? providerId;
  @override
  final String? provider;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey(readValue: readLeadSource)
  final String leadSource;
  @override
  @JsonKey(readValue: readLeadStatus)
  final LeadStatus? leadStatus;
  final List<dynamic> _languages;
  @override
  @JsonKey()
  List<dynamic> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  @JsonKey(readValue: readLastActivityType)
  final String? lastActivityType;
  @override
  @JsonKey(readValue: readLastActivityDate)
  final DateTime? lastActivityDate;
  @override
  @JsonKey(readValue: readLastActivityIsComplete)
  final bool lastActivityIsComplete;
  @override
  @JsonKey(readValue: readCreatedAt)
  final DateTime? createdAt;
  @override
  @JsonKey(readValue: readUpdatedAt)
  final DateTime? updatedAt;
  @override
  @JsonKey(readValue: readCreatedBy)
  final String? createdBy;
  @override
  @JsonKey(readValue: readModifiedBy)
  final String? modifiedBy;
  @override
  final Preference? preference;
  final List<dynamic> _preferredLanguages;
  @override
  @JsonKey(readValue: readPreferredLanguages)
  List<dynamic> get preferredLanguages {
    if (_preferredLanguages is EqualUnmodifiableListView)
      return _preferredLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredLanguages);
  }

  @override
  @JsonKey(readValue: readCurrentAgent)
  final Agent? currentAgent;
  @override
  final String? notes;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(readValue: readDndStatus)
  final bool dndStatus;
  @override
  @JsonKey(readValue: readCompletedActivityCount)
  final int completedActivityCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lead(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, country: $country, city: $city, address: $address, nationality: $nationality, photo: $photo, role: $role, providerId: $providerId, provider: $provider, active: $active, leadSource: $leadSource, leadStatus: $leadStatus, languages: $languages, lastActivityType: $lastActivityType, lastActivityDate: $lastActivityDate, lastActivityIsComplete: $lastActivityIsComplete, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, modifiedBy: $modifiedBy, preference: $preference, preferredLanguages: $preferredLanguages, currentAgent: $currentAgent, notes: $notes, tags: $tags, dndStatus: $dndStatus, completedActivityCount: $completedActivityCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lead'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('nationality', nationality))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('providerId', providerId))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('leadSource', leadSource))
      ..add(DiagnosticsProperty('leadStatus', leadStatus))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('lastActivityType', lastActivityType))
      ..add(DiagnosticsProperty('lastActivityDate', lastActivityDate))
      ..add(
          DiagnosticsProperty('lastActivityIsComplete', lastActivityIsComplete))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('modifiedBy', modifiedBy))
      ..add(DiagnosticsProperty('preference', preference))
      ..add(DiagnosticsProperty('preferredLanguages', preferredLanguages))
      ..add(DiagnosticsProperty('currentAgent', currentAgent))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('dndStatus', dndStatus))
      ..add(DiagnosticsProperty(
          'completedActivityCount', completedActivityCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.leadSource, leadSource) ||
                other.leadSource == leadSource) &&
            (identical(other.leadStatus, leadStatus) ||
                other.leadStatus == leadStatus) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.lastActivityType, lastActivityType) ||
                other.lastActivityType == lastActivityType) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate) &&
            (identical(other.lastActivityIsComplete, lastActivityIsComplete) ||
                other.lastActivityIsComplete == lastActivityIsComplete) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            const DeepCollectionEquality()
                .equals(other._preferredLanguages, _preferredLanguages) &&
            (identical(other.currentAgent, currentAgent) ||
                other.currentAgent == currentAgent) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.dndStatus, dndStatus) ||
                other.dndStatus == dndStatus) &&
            (identical(other.completedActivityCount, completedActivityCount) ||
                other.completedActivityCount == completedActivityCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        email,
        phone,
        country,
        city,
        address,
        nationality,
        photo,
        role,
        providerId,
        provider,
        active,
        leadSource,
        leadStatus,
        const DeepCollectionEquality().hash(_languages),
        lastActivityType,
        lastActivityDate,
        lastActivityIsComplete,
        createdAt,
        updatedAt,
        createdBy,
        modifiedBy,
        preference,
        const DeepCollectionEquality().hash(_preferredLanguages),
        currentAgent,
        notes,
        const DeepCollectionEquality().hash(_tags),
        dndStatus,
        completedActivityCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      __$$LeadImplCopyWithImpl<_$LeadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadImplToJson(
      this,
    );
  }
}

abstract class _Lead extends Lead {
  const factory _Lead(
      {@JsonKey(readValue: readId) required final String id,
      @JsonKey(readValue: readFirstName) required final String firstName,
      @JsonKey(readValue: readLastName) final String lastName,
      final String? email,
      final String? phone,
      final String? country,
      final String? city,
      final String? address,
      final String? nationality,
      final String? photo,
      final String? role,
      @JsonKey(readValue: readProviderId) final String? providerId,
      final String? provider,
      final bool active,
      @JsonKey(readValue: readLeadSource) required final String leadSource,
      @JsonKey(readValue: readLeadStatus) final LeadStatus? leadStatus,
      final List<dynamic> languages,
      @JsonKey(readValue: readLastActivityType) final String? lastActivityType,
      @JsonKey(readValue: readLastActivityDate)
      final DateTime? lastActivityDate,
      @JsonKey(readValue: readLastActivityIsComplete)
      final bool lastActivityIsComplete,
      @JsonKey(readValue: readCreatedAt) final DateTime? createdAt,
      @JsonKey(readValue: readUpdatedAt) final DateTime? updatedAt,
      @JsonKey(readValue: readCreatedBy) final String? createdBy,
      @JsonKey(readValue: readModifiedBy) final String? modifiedBy,
      final Preference? preference,
      @JsonKey(readValue: readPreferredLanguages)
      final List<dynamic> preferredLanguages,
      @JsonKey(readValue: readCurrentAgent) final Agent? currentAgent,
      final String? notes,
      final List<String> tags,
      @JsonKey(readValue: readDndStatus) final bool dndStatus,
      @JsonKey(readValue: readCompletedActivityCount)
      final int completedActivityCount}) = _$LeadImpl;
  const _Lead._() : super._();

  factory _Lead.fromJson(Map<String, dynamic> json) = _$LeadImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  @JsonKey(readValue: readFirstName)
  String get firstName;
  @override
  @JsonKey(readValue: readLastName)
  String get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get address;
  @override
  String? get nationality;
  @override
  String? get photo;
  @override
  String? get role;
  @override
  @JsonKey(readValue: readProviderId)
  String? get providerId;
  @override
  String? get provider;
  @override
  bool get active;
  @override
  @JsonKey(readValue: readLeadSource)
  String get leadSource;
  @override
  @JsonKey(readValue: readLeadStatus)
  LeadStatus? get leadStatus;
  @override
  List<dynamic> get languages;
  @override
  @JsonKey(readValue: readLastActivityType)
  String? get lastActivityType;
  @override
  @JsonKey(readValue: readLastActivityDate)
  DateTime? get lastActivityDate;
  @override
  @JsonKey(readValue: readLastActivityIsComplete)
  bool get lastActivityIsComplete;
  @override
  @JsonKey(readValue: readCreatedAt)
  DateTime? get createdAt;
  @override
  @JsonKey(readValue: readUpdatedAt)
  DateTime? get updatedAt;
  @override
  @JsonKey(readValue: readCreatedBy)
  String? get createdBy;
  @override
  @JsonKey(readValue: readModifiedBy)
  String? get modifiedBy;
  @override
  Preference? get preference;
  @override
  @JsonKey(readValue: readPreferredLanguages)
  List<dynamic> get preferredLanguages;
  @override
  @JsonKey(readValue: readCurrentAgent)
  Agent? get currentAgent;
  @override
  String? get notes;
  @override
  List<String> get tags;
  @override
  @JsonKey(readValue: readDndStatus)
  bool get dndStatus;
  @override
  @JsonKey(readValue: readCompletedActivityCount)
  int get completedActivityCount;
  @override
  @JsonKey(ignore: true)
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preference _$PreferenceFromJson(Map<String, dynamic> json) {
  return _Preference.fromJson(json);
}

/// @nodoc
mixin _$Preference {
  @JsonKey(name: 'plotNumber')
  dynamic get plotNumber => throw _privateConstructorUsedError;
  dynamic get rooms => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceCopyWith<Preference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceCopyWith<$Res> {
  factory $PreferenceCopyWith(
          Preference value, $Res Function(Preference) then) =
      _$PreferenceCopyWithImpl<$Res, Preference>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plotNumber') dynamic plotNumber,
      dynamic rooms,
      String? area,
      String? location});
}

/// @nodoc
class _$PreferenceCopyWithImpl<$Res, $Val extends Preference>
    implements $PreferenceCopyWith<$Res> {
  _$PreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plotNumber = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      plotNumber: freezed == plotNumber
          ? _value.plotNumber
          : plotNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceImplCopyWith<$Res>
    implements $PreferenceCopyWith<$Res> {
  factory _$$PreferenceImplCopyWith(
          _$PreferenceImpl value, $Res Function(_$PreferenceImpl) then) =
      __$$PreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plotNumber') dynamic plotNumber,
      dynamic rooms,
      String? area,
      String? location});
}

/// @nodoc
class __$$PreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceCopyWithImpl<$Res, _$PreferenceImpl>
    implements _$$PreferenceImplCopyWith<$Res> {
  __$$PreferenceImplCopyWithImpl(
      _$PreferenceImpl _value, $Res Function(_$PreferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plotNumber = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
    Object? location = freezed,
  }) {
    return _then(_$PreferenceImpl(
      plotNumber: freezed == plotNumber
          ? _value.plotNumber
          : plotNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferenceImpl with DiagnosticableTreeMixin implements _Preference {
  const _$PreferenceImpl(
      {@JsonKey(name: 'plotNumber') this.plotNumber,
      this.rooms,
      this.area,
      this.location});

  factory _$PreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceImplFromJson(json);

  @override
  @JsonKey(name: 'plotNumber')
  final dynamic plotNumber;
  @override
  final dynamic rooms;
  @override
  final String? area;
  @override
  final String? location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Preference(plotNumber: $plotNumber, rooms: $rooms, area: $area, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Preference'))
      ..add(DiagnosticsProperty('plotNumber', plotNumber))
      ..add(DiagnosticsProperty('rooms', rooms))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceImpl &&
            const DeepCollectionEquality()
                .equals(other.plotNumber, plotNumber) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(plotNumber),
      const DeepCollectionEquality().hash(rooms),
      area,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceImplCopyWith<_$PreferenceImpl> get copyWith =>
      __$$PreferenceImplCopyWithImpl<_$PreferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceImplToJson(
      this,
    );
  }
}

abstract class _Preference implements Preference {
  const factory _Preference(
      {@JsonKey(name: 'plotNumber') final dynamic plotNumber,
      final dynamic rooms,
      final String? area,
      final String? location}) = _$PreferenceImpl;

  factory _Preference.fromJson(Map<String, dynamic> json) =
      _$PreferenceImpl.fromJson;

  @override
  @JsonKey(name: 'plotNumber')
  dynamic get plotNumber;
  @override
  dynamic get rooms;
  @override
  String? get area;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$PreferenceImplCopyWith<_$PreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
