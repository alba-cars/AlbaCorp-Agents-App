// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_property_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadPropertyCardModel {
  @JsonKey(readValue: readId)
  String get id;
  Lead get lead;
  PropertyCardDetailsModel get propertyCard;
  bool get wasOwner;
  bool get isOwner;
  DateTime? get date;
  double? get amount;
  CreatedBy? get createdBy;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadPropertyCardModelCopyWith<LeadPropertyCardModel> get copyWith =>
      _$LeadPropertyCardModelCopyWithImpl<LeadPropertyCardModel>(
          this as LeadPropertyCardModel, _$identity);

  /// Serializes this LeadPropertyCardModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadPropertyCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      isOwner, date, amount, createdBy, createdAt, updatedAt);

  @override
  String toString() {
    return 'LeadPropertyCardModel(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, isOwner: $isOwner, date: $date, amount: $amount, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LeadPropertyCardModelCopyWith<$Res> {
  factory $LeadPropertyCardModelCopyWith(LeadPropertyCardModel value,
          $Res Function(LeadPropertyCardModel) _then) =
      _$LeadPropertyCardModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      PropertyCardDetailsModel propertyCard,
      bool wasOwner,
      bool isOwner,
      DateTime? date,
      double? amount,
      CreatedBy? createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  $LeadCopyWith<$Res> get lead;
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard;
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$LeadPropertyCardModelCopyWithImpl<$Res>
    implements $LeadPropertyCardModelCopyWith<$Res> {
  _$LeadPropertyCardModelCopyWithImpl(this._self, this._then);

  final LeadPropertyCardModel _self;
  final $Res Function(LeadPropertyCardModel) _then;

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? isOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      propertyCard: null == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCardDetailsModel,
      wasOwner: null == wasOwner
          ? _self.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _self.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard {
    return $PropertyCardDetailsModelCopyWith<$Res>(_self.propertyCard, (value) {
      return _then(_self.copyWith(propertyCard: value));
    });
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LeadPropertyCardModel implements LeadPropertyCardModel {
  const _LeadPropertyCardModel(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required this.propertyCard,
      this.wasOwner = false,
      this.isOwner = false,
      this.date,
      this.amount,
      this.createdBy,
      this.createdAt,
      this.updatedAt});
  factory _LeadPropertyCardModel.fromJson(Map<String, dynamic> json) =>
      _$LeadPropertyCardModelFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final Lead lead;
  @override
  final PropertyCardDetailsModel propertyCard;
  @override
  @JsonKey()
  final bool wasOwner;
  @override
  @JsonKey()
  final bool isOwner;
  @override
  final DateTime? date;
  @override
  final double? amount;
  @override
  final CreatedBy? createdBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadPropertyCardModelCopyWith<_LeadPropertyCardModel> get copyWith =>
      __$LeadPropertyCardModelCopyWithImpl<_LeadPropertyCardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadPropertyCardModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadPropertyCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      isOwner, date, amount, createdBy, createdAt, updatedAt);

  @override
  String toString() {
    return 'LeadPropertyCardModel(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, isOwner: $isOwner, date: $date, amount: $amount, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LeadPropertyCardModelCopyWith<$Res>
    implements $LeadPropertyCardModelCopyWith<$Res> {
  factory _$LeadPropertyCardModelCopyWith(_LeadPropertyCardModel value,
          $Res Function(_LeadPropertyCardModel) _then) =
      __$LeadPropertyCardModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      PropertyCardDetailsModel propertyCard,
      bool wasOwner,
      bool isOwner,
      DateTime? date,
      double? amount,
      CreatedBy? createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $LeadCopyWith<$Res> get lead;
  @override
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard;
  @override
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$LeadPropertyCardModelCopyWithImpl<$Res>
    implements _$LeadPropertyCardModelCopyWith<$Res> {
  __$LeadPropertyCardModelCopyWithImpl(this._self, this._then);

  final _LeadPropertyCardModel _self;
  final $Res Function(_LeadPropertyCardModel) _then;

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? isOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_LeadPropertyCardModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      propertyCard: null == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCardDetailsModel,
      wasOwner: null == wasOwner
          ? _self.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _self.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard {
    return $PropertyCardDetailsModelCopyWith<$Res>(_self.propertyCard, (value) {
      return _then(_self.copyWith(propertyCard: value));
    });
  }

  /// Create a copy of LeadPropertyCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
mixin _$LeadPropertyCardModelNotPopulated {
  @JsonKey(readValue: readId)
  String get id;
  String get lead;
  PropertyCard get propertyCard;
  bool get wasOwner;
  DateTime? get date;
  double? get amount;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadPropertyCardModelNotPopulatedCopyWith<LeadPropertyCardModelNotPopulated>
      get copyWith => _$LeadPropertyCardModelNotPopulatedCopyWithImpl<
              LeadPropertyCardModelNotPopulated>(
          this as LeadPropertyCardModelNotPopulated, _$identity);

  /// Serializes this LeadPropertyCardModelNotPopulated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadPropertyCardModelNotPopulated &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      date, amount, createdAt, updatedAt);

  @override
  String toString() {
    return 'LeadPropertyCardModelNotPopulated(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, date: $date, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  factory $LeadPropertyCardModelNotPopulatedCopyWith(
          LeadPropertyCardModelNotPopulated value,
          $Res Function(LeadPropertyCardModelNotPopulated) _then) =
      _$LeadPropertyCardModelNotPopulatedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String lead,
      PropertyCard propertyCard,
      bool wasOwner,
      DateTime? date,
      double? amount,
      DateTime? createdAt,
      DateTime? updatedAt});

  $PropertyCardCopyWith<$Res> get propertyCard;
}

/// @nodoc
class _$LeadPropertyCardModelNotPopulatedCopyWithImpl<$Res>
    implements $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  _$LeadPropertyCardModelNotPopulatedCopyWithImpl(this._self, this._then);

  final LeadPropertyCardModelNotPopulated _self;
  final $Res Function(LeadPropertyCardModelNotPopulated) _then;

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCard: null == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCard,
      wasOwner: null == wasOwner
          ? _self.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCardCopyWith<$Res> get propertyCard {
    return $PropertyCardCopyWith<$Res>(_self.propertyCard, (value) {
      return _then(_self.copyWith(propertyCard: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LeadPropertyCardModelNotPopulated
    implements LeadPropertyCardModelNotPopulated {
  const _LeadPropertyCardModelNotPopulated(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required this.propertyCard,
      this.wasOwner = false,
      this.date,
      this.amount,
      this.createdAt,
      this.updatedAt});
  factory _LeadPropertyCardModelNotPopulated.fromJson(
          Map<String, dynamic> json) =>
      _$LeadPropertyCardModelNotPopulatedFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String lead;
  @override
  final PropertyCard propertyCard;
  @override
  @JsonKey()
  final bool wasOwner;
  @override
  final DateTime? date;
  @override
  final double? amount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadPropertyCardModelNotPopulatedCopyWith<
          _LeadPropertyCardModelNotPopulated>
      get copyWith => __$LeadPropertyCardModelNotPopulatedCopyWithImpl<
          _LeadPropertyCardModelNotPopulated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadPropertyCardModelNotPopulatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadPropertyCardModelNotPopulated &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      date, amount, createdAt, updatedAt);

  @override
  String toString() {
    return 'LeadPropertyCardModelNotPopulated(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, date: $date, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LeadPropertyCardModelNotPopulatedCopyWith<$Res>
    implements $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  factory _$LeadPropertyCardModelNotPopulatedCopyWith(
          _LeadPropertyCardModelNotPopulated value,
          $Res Function(_LeadPropertyCardModelNotPopulated) _then) =
      __$LeadPropertyCardModelNotPopulatedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String lead,
      PropertyCard propertyCard,
      bool wasOwner,
      DateTime? date,
      double? amount,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $PropertyCardCopyWith<$Res> get propertyCard;
}

/// @nodoc
class __$LeadPropertyCardModelNotPopulatedCopyWithImpl<$Res>
    implements _$LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  __$LeadPropertyCardModelNotPopulatedCopyWithImpl(this._self, this._then);

  final _LeadPropertyCardModelNotPopulated _self;
  final $Res Function(_LeadPropertyCardModelNotPopulated) _then;

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_LeadPropertyCardModelNotPopulated(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCard: null == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCard,
      wasOwner: null == wasOwner
          ? _self.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of LeadPropertyCardModelNotPopulated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCardCopyWith<$Res> get propertyCard {
    return $PropertyCardCopyWith<$Res>(_self.propertyCard, (value) {
      return _then(_self.copyWith(propertyCard: value));
    });
  }
}

/// @nodoc
mixin _$LeadExplorerItem {
  @JsonKey(readValue: readId)
  String get id;
  Lead get lead;
  List<LeadPropertyCardModelNotPopulated> get mappings;

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadExplorerItemCopyWith<LeadExplorerItem> get copyWith =>
      _$LeadExplorerItemCopyWithImpl<LeadExplorerItem>(
          this as LeadExplorerItem, _$identity);

  /// Serializes this LeadExplorerItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadExplorerItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            const DeepCollectionEquality().equals(other.mappings, mappings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lead, const DeepCollectionEquality().hash(mappings));

  @override
  String toString() {
    return 'LeadExplorerItem(id: $id, lead: $lead, mappings: $mappings)';
  }
}

/// @nodoc
abstract mixin class $LeadExplorerItemCopyWith<$Res> {
  factory $LeadExplorerItemCopyWith(
          LeadExplorerItem value, $Res Function(LeadExplorerItem) _then) =
      _$LeadExplorerItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      List<LeadPropertyCardModelNotPopulated> mappings});

  $LeadCopyWith<$Res> get lead;
}

/// @nodoc
class _$LeadExplorerItemCopyWithImpl<$Res>
    implements $LeadExplorerItemCopyWith<$Res> {
  _$LeadExplorerItemCopyWithImpl(this._self, this._then);

  final LeadExplorerItem _self;
  final $Res Function(LeadExplorerItem) _then;

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? mappings = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      mappings: null == mappings
          ? _self.mappings
          : mappings // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModelNotPopulated>,
    ));
  }

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LeadExplorerItem implements LeadExplorerItem {
  const _LeadExplorerItem(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required final List<LeadPropertyCardModelNotPopulated> mappings})
      : _mappings = mappings;
  factory _LeadExplorerItem.fromJson(Map<String, dynamic> json) =>
      _$LeadExplorerItemFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final Lead lead;
  final List<LeadPropertyCardModelNotPopulated> _mappings;
  @override
  List<LeadPropertyCardModelNotPopulated> get mappings {
    if (_mappings is EqualUnmodifiableListView) return _mappings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mappings);
  }

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadExplorerItemCopyWith<_LeadExplorerItem> get copyWith =>
      __$LeadExplorerItemCopyWithImpl<_LeadExplorerItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadExplorerItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadExplorerItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            const DeepCollectionEquality().equals(other._mappings, _mappings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lead, const DeepCollectionEquality().hash(_mappings));

  @override
  String toString() {
    return 'LeadExplorerItem(id: $id, lead: $lead, mappings: $mappings)';
  }
}

/// @nodoc
abstract mixin class _$LeadExplorerItemCopyWith<$Res>
    implements $LeadExplorerItemCopyWith<$Res> {
  factory _$LeadExplorerItemCopyWith(
          _LeadExplorerItem value, $Res Function(_LeadExplorerItem) _then) =
      __$LeadExplorerItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      List<LeadPropertyCardModelNotPopulated> mappings});

  @override
  $LeadCopyWith<$Res> get lead;
}

/// @nodoc
class __$LeadExplorerItemCopyWithImpl<$Res>
    implements _$LeadExplorerItemCopyWith<$Res> {
  __$LeadExplorerItemCopyWithImpl(this._self, this._then);

  final _LeadExplorerItem _self;
  final $Res Function(_LeadExplorerItem) _then;

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? mappings = null,
  }) {
    return _then(_LeadExplorerItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      mappings: null == mappings
          ? _self._mappings
          : mappings // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModelNotPopulated>,
    ));
  }

  /// Create a copy of LeadExplorerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

// dart format on
