// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lead implements DiagnosticableTreeMixin {
  @JsonKey(readValue: readId)
  String get id;
  @JsonKey(readValue: readFirstName)
  String get firstName;
  @JsonKey(readValue: readLastName)
  String get lastName;
  String? get email;
  String? get phone;
  String? get country;
  String? get city;
  String? get address;
  String? get nationality;
  String? get photo;
  String? get role;
  @JsonKey(readValue: readProviderId)
  String? get providerId;
  String? get provider;
  bool get active;
  @JsonKey(readValue: readLeadSource)
  String get leadSource;
  @JsonKey(readValue: readLeadStatus)
  LeadStatus? get leadStatus;
  List<dynamic> get languages;
  @JsonKey(readValue: readLastActivityType)
  String? get lastActivityType;
  @JsonKey(readValue: readLastActivityDate)
  DateTime? get lastActivityDate;
  @JsonKey(readValue: readLastActivityIsComplete)
  bool get lastActivityIsComplete;
  @JsonKey(readValue: readCreatedAt)
  DateTime? get createdAt;
  @JsonKey(readValue: readUpdatedAt)
  DateTime? get updatedAt;
  @JsonKey(readValue: readCreatedBy)
  String? get createdBy;
  Preference? get preference;
  @JsonKey(readValue: readPreferredLanguages)
  List<dynamic> get preferredLanguages;
  @JsonKey(readValue: readCurrentAgent)
  Agent? get currentAgent;
  String? get notes;
  List<String> get tags;
  @JsonKey(readValue: readDndStatus)
  bool get dndStatus;
  @JsonKey(readValue: readCompletedActivityCount)
  int get completedActivityCount;
  @JsonKey(readValue: readLeadSourceObject)
  LeadSourceItem? get leadSourceObject;
  double? get rating;
  bool get isProspect;

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadCopyWith<Lead> get copyWith =>
      _$LeadCopyWithImpl<Lead>(this as Lead, _$identity);

  /// Serializes this Lead to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
      ..add(DiagnosticsProperty('preference', preference))
      ..add(DiagnosticsProperty('preferredLanguages', preferredLanguages))
      ..add(DiagnosticsProperty('currentAgent', currentAgent))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('dndStatus', dndStatus))
      ..add(
          DiagnosticsProperty('completedActivityCount', completedActivityCount))
      ..add(DiagnosticsProperty('leadSourceObject', leadSourceObject))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('isProspect', isProspect));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Lead &&
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
            const DeepCollectionEquality().equals(other.languages, languages) &&
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
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            const DeepCollectionEquality()
                .equals(other.preferredLanguages, preferredLanguages) &&
            (identical(other.currentAgent, currentAgent) ||
                other.currentAgent == currentAgent) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.dndStatus, dndStatus) ||
                other.dndStatus == dndStatus) &&
            (identical(other.completedActivityCount, completedActivityCount) ||
                other.completedActivityCount == completedActivityCount) &&
            (identical(other.leadSourceObject, leadSourceObject) ||
                other.leadSourceObject == leadSourceObject) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isProspect, isProspect) ||
                other.isProspect == isProspect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(languages),
        lastActivityType,
        lastActivityDate,
        lastActivityIsComplete,
        createdAt,
        updatedAt,
        createdBy,
        preference,
        const DeepCollectionEquality().hash(preferredLanguages),
        currentAgent,
        notes,
        const DeepCollectionEquality().hash(tags),
        dndStatus,
        completedActivityCount,
        leadSourceObject,
        rating,
        isProspect
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lead(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, country: $country, city: $city, address: $address, nationality: $nationality, photo: $photo, role: $role, providerId: $providerId, provider: $provider, active: $active, leadSource: $leadSource, leadStatus: $leadStatus, languages: $languages, lastActivityType: $lastActivityType, lastActivityDate: $lastActivityDate, lastActivityIsComplete: $lastActivityIsComplete, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, preference: $preference, preferredLanguages: $preferredLanguages, currentAgent: $currentAgent, notes: $notes, tags: $tags, dndStatus: $dndStatus, completedActivityCount: $completedActivityCount, leadSourceObject: $leadSourceObject, rating: $rating, isProspect: $isProspect)';
  }
}

/// @nodoc
abstract mixin class $LeadCopyWith<$Res> {
  factory $LeadCopyWith(Lead value, $Res Function(Lead) _then) =
      _$LeadCopyWithImpl;
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
      Preference? preference,
      @JsonKey(readValue: readPreferredLanguages)
      List<dynamic> preferredLanguages,
      @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
      String? notes,
      List<String> tags,
      @JsonKey(readValue: readDndStatus) bool dndStatus,
      @JsonKey(readValue: readCompletedActivityCount)
      int completedActivityCount,
      @JsonKey(readValue: readLeadSourceObject)
      LeadSourceItem? leadSourceObject,
      double? rating,
      bool isProspect});

  $PreferenceCopyWith<$Res>? get preference;
  $AgentCopyWith<$Res>? get currentAgent;
  $LeadSourceItemCopyWith<$Res>? get leadSourceObject;
}

/// @nodoc
class _$LeadCopyWithImpl<$Res> implements $LeadCopyWith<$Res> {
  _$LeadCopyWithImpl(this._self, this._then);

  final Lead _self;
  final $Res Function(Lead) _then;

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
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
    Object? preference = freezed,
    Object? preferredLanguages = null,
    Object? currentAgent = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? dndStatus = null,
    Object? completedActivityCount = null,
    Object? leadSourceObject = freezed,
    Object? rating = freezed,
    Object? isProspect = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      leadSource: null == leadSource
          ? _self.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: freezed == leadStatus
          ? _self.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as LeadStatus?,
      languages: null == languages
          ? _self.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastActivityType: freezed == lastActivityType
          ? _self.lastActivityType
          : lastActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: freezed == lastActivityDate
          ? _self.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivityIsComplete: null == lastActivityIsComplete
          ? _self.lastActivityIsComplete
          : lastActivityIsComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      preference: freezed == preference
          ? _self.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as Preference?,
      preferredLanguages: null == preferredLanguages
          ? _self.preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dndStatus: null == dndStatus
          ? _self.dndStatus
          : dndStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      completedActivityCount: null == completedActivityCount
          ? _self.completedActivityCount
          : completedActivityCount // ignore: cast_nullable_to_non_nullable
              as int,
      leadSourceObject: freezed == leadSourceObject
          ? _self.leadSourceObject
          : leadSourceObject // ignore: cast_nullable_to_non_nullable
              as LeadSourceItem?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isProspect: null == isProspect
          ? _self.isProspect
          : isProspect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferenceCopyWith<$Res>? get preference {
    if (_self.preference == null) {
      return null;
    }

    return $PreferenceCopyWith<$Res>(_self.preference!, (value) {
      return _then(_self.copyWith(preference: value));
    });
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get currentAgent {
    if (_self.currentAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.currentAgent!, (value) {
      return _then(_self.copyWith(currentAgent: value));
    });
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadSourceItemCopyWith<$Res>? get leadSourceObject {
    if (_self.leadSourceObject == null) {
      return null;
    }

    return $LeadSourceItemCopyWith<$Res>(_self.leadSourceObject!, (value) {
      return _then(_self.copyWith(leadSourceObject: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Lead extends Lead with DiagnosticableTreeMixin {
  const _Lead(
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
      this.preference,
      @JsonKey(readValue: readPreferredLanguages)
      final List<dynamic> preferredLanguages = const [],
      @JsonKey(readValue: readCurrentAgent) this.currentAgent,
      this.notes,
      final List<String> tags = const [],
      @JsonKey(readValue: readDndStatus) this.dndStatus = false,
      @JsonKey(readValue: readCompletedActivityCount)
      this.completedActivityCount = 0,
      @JsonKey(readValue: readLeadSourceObject) this.leadSourceObject,
      this.rating,
      this.isProspect = false})
      : _languages = languages,
        _preferredLanguages = preferredLanguages,
        _tags = tags,
        super._();
  factory _Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);

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
  @JsonKey(readValue: readLeadSourceObject)
  final LeadSourceItem? leadSourceObject;
  @override
  final double? rating;
  @override
  @JsonKey()
  final bool isProspect;

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadCopyWith<_Lead> get copyWith =>
      __$LeadCopyWithImpl<_Lead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
      ..add(DiagnosticsProperty('preference', preference))
      ..add(DiagnosticsProperty('preferredLanguages', preferredLanguages))
      ..add(DiagnosticsProperty('currentAgent', currentAgent))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('dndStatus', dndStatus))
      ..add(
          DiagnosticsProperty('completedActivityCount', completedActivityCount))
      ..add(DiagnosticsProperty('leadSourceObject', leadSourceObject))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('isProspect', isProspect));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Lead &&
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
                other.completedActivityCount == completedActivityCount) &&
            (identical(other.leadSourceObject, leadSourceObject) ||
                other.leadSourceObject == leadSourceObject) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isProspect, isProspect) ||
                other.isProspect == isProspect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        preference,
        const DeepCollectionEquality().hash(_preferredLanguages),
        currentAgent,
        notes,
        const DeepCollectionEquality().hash(_tags),
        dndStatus,
        completedActivityCount,
        leadSourceObject,
        rating,
        isProspect
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lead(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, country: $country, city: $city, address: $address, nationality: $nationality, photo: $photo, role: $role, providerId: $providerId, provider: $provider, active: $active, leadSource: $leadSource, leadStatus: $leadStatus, languages: $languages, lastActivityType: $lastActivityType, lastActivityDate: $lastActivityDate, lastActivityIsComplete: $lastActivityIsComplete, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, preference: $preference, preferredLanguages: $preferredLanguages, currentAgent: $currentAgent, notes: $notes, tags: $tags, dndStatus: $dndStatus, completedActivityCount: $completedActivityCount, leadSourceObject: $leadSourceObject, rating: $rating, isProspect: $isProspect)';
  }
}

/// @nodoc
abstract mixin class _$LeadCopyWith<$Res> implements $LeadCopyWith<$Res> {
  factory _$LeadCopyWith(_Lead value, $Res Function(_Lead) _then) =
      __$LeadCopyWithImpl;
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
      Preference? preference,
      @JsonKey(readValue: readPreferredLanguages)
      List<dynamic> preferredLanguages,
      @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
      String? notes,
      List<String> tags,
      @JsonKey(readValue: readDndStatus) bool dndStatus,
      @JsonKey(readValue: readCompletedActivityCount)
      int completedActivityCount,
      @JsonKey(readValue: readLeadSourceObject)
      LeadSourceItem? leadSourceObject,
      double? rating,
      bool isProspect});

  @override
  $PreferenceCopyWith<$Res>? get preference;
  @override
  $AgentCopyWith<$Res>? get currentAgent;
  @override
  $LeadSourceItemCopyWith<$Res>? get leadSourceObject;
}

/// @nodoc
class __$LeadCopyWithImpl<$Res> implements _$LeadCopyWith<$Res> {
  __$LeadCopyWithImpl(this._self, this._then);

  final _Lead _self;
  final $Res Function(_Lead) _then;

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? preference = freezed,
    Object? preferredLanguages = null,
    Object? currentAgent = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? dndStatus = null,
    Object? completedActivityCount = null,
    Object? leadSourceObject = freezed,
    Object? rating = freezed,
    Object? isProspect = null,
  }) {
    return _then(_Lead(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      leadSource: null == leadSource
          ? _self.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: freezed == leadStatus
          ? _self.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as LeadStatus?,
      languages: null == languages
          ? _self._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastActivityType: freezed == lastActivityType
          ? _self.lastActivityType
          : lastActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: freezed == lastActivityDate
          ? _self.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivityIsComplete: null == lastActivityIsComplete
          ? _self.lastActivityIsComplete
          : lastActivityIsComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      preference: freezed == preference
          ? _self.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as Preference?,
      preferredLanguages: null == preferredLanguages
          ? _self._preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dndStatus: null == dndStatus
          ? _self.dndStatus
          : dndStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      completedActivityCount: null == completedActivityCount
          ? _self.completedActivityCount
          : completedActivityCount // ignore: cast_nullable_to_non_nullable
              as int,
      leadSourceObject: freezed == leadSourceObject
          ? _self.leadSourceObject
          : leadSourceObject // ignore: cast_nullable_to_non_nullable
              as LeadSourceItem?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isProspect: null == isProspect
          ? _self.isProspect
          : isProspect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferenceCopyWith<$Res>? get preference {
    if (_self.preference == null) {
      return null;
    }

    return $PreferenceCopyWith<$Res>(_self.preference!, (value) {
      return _then(_self.copyWith(preference: value));
    });
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get currentAgent {
    if (_self.currentAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.currentAgent!, (value) {
      return _then(_self.copyWith(currentAgent: value));
    });
  }

  /// Create a copy of Lead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadSourceItemCopyWith<$Res>? get leadSourceObject {
    if (_self.leadSourceObject == null) {
      return null;
    }

    return $LeadSourceItemCopyWith<$Res>(_self.leadSourceObject!, (value) {
      return _then(_self.copyWith(leadSourceObject: value));
    });
  }
}

/// @nodoc
mixin _$Preference implements DiagnosticableTreeMixin {
  @JsonKey(name: 'plotNumber')
  dynamic get plotNumber;
  dynamic get rooms;
  String? get area;
  String? get location;

  /// Create a copy of Preference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreferenceCopyWith<Preference> get copyWith =>
      _$PreferenceCopyWithImpl<Preference>(this as Preference, _$identity);

  /// Serializes this Preference to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
            other is Preference &&
            const DeepCollectionEquality()
                .equals(other.plotNumber, plotNumber) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(plotNumber),
      const DeepCollectionEquality().hash(rooms),
      area,
      location);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Preference(plotNumber: $plotNumber, rooms: $rooms, area: $area, location: $location)';
  }
}

/// @nodoc
abstract mixin class $PreferenceCopyWith<$Res> {
  factory $PreferenceCopyWith(
          Preference value, $Res Function(Preference) _then) =
      _$PreferenceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'plotNumber') dynamic plotNumber,
      dynamic rooms,
      String? area,
      String? location});
}

/// @nodoc
class _$PreferenceCopyWithImpl<$Res> implements $PreferenceCopyWith<$Res> {
  _$PreferenceCopyWithImpl(this._self, this._then);

  final Preference _self;
  final $Res Function(Preference) _then;

  /// Create a copy of Preference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plotNumber = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
    Object? location = freezed,
  }) {
    return _then(_self.copyWith(
      plotNumber: freezed == plotNumber
          ? _self.plotNumber
          : plotNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rooms: freezed == rooms
          ? _self.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Preference with DiagnosticableTreeMixin implements Preference {
  const _Preference(
      {@JsonKey(name: 'plotNumber') this.plotNumber,
      this.rooms,
      this.area,
      this.location});
  factory _Preference.fromJson(Map<String, dynamic> json) =>
      _$PreferenceFromJson(json);

  @override
  @JsonKey(name: 'plotNumber')
  final dynamic plotNumber;
  @override
  final dynamic rooms;
  @override
  final String? area;
  @override
  final String? location;

  /// Create a copy of Preference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreferenceCopyWith<_Preference> get copyWith =>
      __$PreferenceCopyWithImpl<_Preference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PreferenceToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
            other is _Preference &&
            const DeepCollectionEquality()
                .equals(other.plotNumber, plotNumber) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(plotNumber),
      const DeepCollectionEquality().hash(rooms),
      area,
      location);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Preference(plotNumber: $plotNumber, rooms: $rooms, area: $area, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$PreferenceCopyWith<$Res>
    implements $PreferenceCopyWith<$Res> {
  factory _$PreferenceCopyWith(
          _Preference value, $Res Function(_Preference) _then) =
      __$PreferenceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plotNumber') dynamic plotNumber,
      dynamic rooms,
      String? area,
      String? location});
}

/// @nodoc
class __$PreferenceCopyWithImpl<$Res> implements _$PreferenceCopyWith<$Res> {
  __$PreferenceCopyWithImpl(this._self, this._then);

  final _Preference _self;
  final $Res Function(_Preference) _then;

  /// Create a copy of Preference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? plotNumber = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
    Object? location = freezed,
  }) {
    return _then(_Preference(
      plotNumber: freezed == plotNumber
          ? _self.plotNumber
          : plotNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rooms: freezed == rooms
          ? _self.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
