// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_property_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadPropertyCardModel _$LeadPropertyCardModelFromJson(
    Map<String, dynamic> json) {
  return _LeadPropertyCardModel.fromJson(json);
}

/// @nodoc
mixin _$LeadPropertyCardModel {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  Lead get lead => throw _privateConstructorUsedError;
  PropertyCardDetailsModel get propertyCard =>
      throw _privateConstructorUsedError;
  bool get wasOwner => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  CreatedBy get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadPropertyCardModelCopyWith<LeadPropertyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadPropertyCardModelCopyWith<$Res> {
  factory $LeadPropertyCardModelCopyWith(LeadPropertyCardModel value,
          $Res Function(LeadPropertyCardModel) then) =
      _$LeadPropertyCardModelCopyWithImpl<$Res, LeadPropertyCardModel>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      PropertyCardDetailsModel propertyCard,
      bool wasOwner,
      DateTime? date,
      double? amount,
      CreatedBy createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  $LeadCopyWith<$Res> get lead;
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard;
  $CreatedByCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$LeadPropertyCardModelCopyWithImpl<$Res,
        $Val extends LeadPropertyCardModel>
    implements $LeadPropertyCardModelCopyWith<$Res> {
  _$LeadPropertyCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdBy = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      propertyCard: null == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCardDetailsModel,
      wasOwner: null == wasOwner
          ? _value.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
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
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_value.lead, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard {
    return $PropertyCardDetailsModelCopyWith<$Res>(_value.propertyCard,
        (value) {
      return _then(_value.copyWith(propertyCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res> get createdBy {
    return $CreatedByCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadPropertyCardModelImplCopyWith<$Res>
    implements $LeadPropertyCardModelCopyWith<$Res> {
  factory _$$LeadPropertyCardModelImplCopyWith(
          _$LeadPropertyCardModelImpl value,
          $Res Function(_$LeadPropertyCardModelImpl) then) =
      __$$LeadPropertyCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      PropertyCardDetailsModel propertyCard,
      bool wasOwner,
      DateTime? date,
      double? amount,
      CreatedBy createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $LeadCopyWith<$Res> get lead;
  @override
  $PropertyCardDetailsModelCopyWith<$Res> get propertyCard;
  @override
  $CreatedByCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$$LeadPropertyCardModelImplCopyWithImpl<$Res>
    extends _$LeadPropertyCardModelCopyWithImpl<$Res,
        _$LeadPropertyCardModelImpl>
    implements _$$LeadPropertyCardModelImplCopyWith<$Res> {
  __$$LeadPropertyCardModelImplCopyWithImpl(_$LeadPropertyCardModelImpl _value,
      $Res Function(_$LeadPropertyCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? propertyCard = null,
    Object? wasOwner = null,
    Object? date = freezed,
    Object? amount = freezed,
    Object? createdBy = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LeadPropertyCardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      propertyCard: null == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCardDetailsModel,
      wasOwner: null == wasOwner
          ? _value.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
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
class _$LeadPropertyCardModelImpl implements _LeadPropertyCardModel {
  const _$LeadPropertyCardModelImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required this.propertyCard,
      this.wasOwner = false,
      this.date,
      this.amount,
      required this.createdBy,
      this.createdAt,
      this.updatedAt});

  factory _$LeadPropertyCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadPropertyCardModelImplFromJson(json);

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
  final DateTime? date;
  @override
  final double? amount;
  @override
  final CreatedBy createdBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LeadPropertyCardModel(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, date: $date, amount: $amount, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadPropertyCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      date, amount, createdBy, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadPropertyCardModelImplCopyWith<_$LeadPropertyCardModelImpl>
      get copyWith => __$$LeadPropertyCardModelImplCopyWithImpl<
          _$LeadPropertyCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadPropertyCardModelImplToJson(
      this,
    );
  }
}

abstract class _LeadPropertyCardModel implements LeadPropertyCardModel {
  const factory _LeadPropertyCardModel(
      {@JsonKey(readValue: readId) required final String id,
      required final Lead lead,
      required final PropertyCardDetailsModel propertyCard,
      final bool wasOwner,
      final DateTime? date,
      final double? amount,
      required final CreatedBy createdBy,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$LeadPropertyCardModelImpl;

  factory _LeadPropertyCardModel.fromJson(Map<String, dynamic> json) =
      _$LeadPropertyCardModelImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  Lead get lead;
  @override
  PropertyCardDetailsModel get propertyCard;
  @override
  bool get wasOwner;
  @override
  DateTime? get date;
  @override
  double? get amount;
  @override
  CreatedBy get createdBy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LeadPropertyCardModelImplCopyWith<_$LeadPropertyCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeadPropertyCardModelNotPopulated _$LeadPropertyCardModelNotPopulatedFromJson(
    Map<String, dynamic> json) {
  return _LeadPropertyCardModelNotPopulated.fromJson(json);
}

/// @nodoc
mixin _$LeadPropertyCardModelNotPopulated {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String get lead => throw _privateConstructorUsedError;
  PropertyCard get propertyCard => throw _privateConstructorUsedError;
  bool get wasOwner => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadPropertyCardModelNotPopulatedCopyWith<LeadPropertyCardModelNotPopulated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  factory $LeadPropertyCardModelNotPopulatedCopyWith(
          LeadPropertyCardModelNotPopulated value,
          $Res Function(LeadPropertyCardModelNotPopulated) then) =
      _$LeadPropertyCardModelNotPopulatedCopyWithImpl<$Res,
          LeadPropertyCardModelNotPopulated>;
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
class _$LeadPropertyCardModelNotPopulatedCopyWithImpl<$Res,
        $Val extends LeadPropertyCardModelNotPopulated>
    implements $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  _$LeadPropertyCardModelNotPopulatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCard: null == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCard,
      wasOwner: null == wasOwner
          ? _value.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $PropertyCardCopyWith<$Res> get propertyCard {
    return $PropertyCardCopyWith<$Res>(_value.propertyCard, (value) {
      return _then(_value.copyWith(propertyCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadPropertyCardModelNotPopulatedImplCopyWith<$Res>
    implements $LeadPropertyCardModelNotPopulatedCopyWith<$Res> {
  factory _$$LeadPropertyCardModelNotPopulatedImplCopyWith(
          _$LeadPropertyCardModelNotPopulatedImpl value,
          $Res Function(_$LeadPropertyCardModelNotPopulatedImpl) then) =
      __$$LeadPropertyCardModelNotPopulatedImplCopyWithImpl<$Res>;
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
class __$$LeadPropertyCardModelNotPopulatedImplCopyWithImpl<$Res>
    extends _$LeadPropertyCardModelNotPopulatedCopyWithImpl<$Res,
        _$LeadPropertyCardModelNotPopulatedImpl>
    implements _$$LeadPropertyCardModelNotPopulatedImplCopyWith<$Res> {
  __$$LeadPropertyCardModelNotPopulatedImplCopyWithImpl(
      _$LeadPropertyCardModelNotPopulatedImpl _value,
      $Res Function(_$LeadPropertyCardModelNotPopulatedImpl) _then)
      : super(_value, _then);

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
    return _then(_$LeadPropertyCardModelNotPopulatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCard: null == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as PropertyCard,
      wasOwner: null == wasOwner
          ? _value.wasOwner
          : wasOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$LeadPropertyCardModelNotPopulatedImpl
    implements _LeadPropertyCardModelNotPopulated {
  const _$LeadPropertyCardModelNotPopulatedImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required this.propertyCard,
      this.wasOwner = false,
      this.date,
      this.amount,
      this.createdAt,
      this.updatedAt});

  factory _$LeadPropertyCardModelNotPopulatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LeadPropertyCardModelNotPopulatedImplFromJson(json);

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

  @override
  String toString() {
    return 'LeadPropertyCardModelNotPopulated(id: $id, lead: $lead, propertyCard: $propertyCard, wasOwner: $wasOwner, date: $date, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadPropertyCardModelNotPopulatedImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, propertyCard, wasOwner,
      date, amount, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadPropertyCardModelNotPopulatedImplCopyWith<
          _$LeadPropertyCardModelNotPopulatedImpl>
      get copyWith => __$$LeadPropertyCardModelNotPopulatedImplCopyWithImpl<
          _$LeadPropertyCardModelNotPopulatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadPropertyCardModelNotPopulatedImplToJson(
      this,
    );
  }
}

abstract class _LeadPropertyCardModelNotPopulated
    implements LeadPropertyCardModelNotPopulated {
  const factory _LeadPropertyCardModelNotPopulated(
      {@JsonKey(readValue: readId) required final String id,
      required final String lead,
      required final PropertyCard propertyCard,
      final bool wasOwner,
      final DateTime? date,
      final double? amount,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$LeadPropertyCardModelNotPopulatedImpl;

  factory _LeadPropertyCardModelNotPopulated.fromJson(
          Map<String, dynamic> json) =
      _$LeadPropertyCardModelNotPopulatedImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String get lead;
  @override
  PropertyCard get propertyCard;
  @override
  bool get wasOwner;
  @override
  DateTime? get date;
  @override
  double? get amount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LeadPropertyCardModelNotPopulatedImplCopyWith<
          _$LeadPropertyCardModelNotPopulatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeadExplorerItem _$LeadExplorerItemFromJson(Map<String, dynamic> json) {
  return _LeadExplorerItem.fromJson(json);
}

/// @nodoc
mixin _$LeadExplorerItem {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  Lead get lead => throw _privateConstructorUsedError;
  List<LeadPropertyCardModelNotPopulated> get mappings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadExplorerItemCopyWith<LeadExplorerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadExplorerItemCopyWith<$Res> {
  factory $LeadExplorerItemCopyWith(
          LeadExplorerItem value, $Res Function(LeadExplorerItem) then) =
      _$LeadExplorerItemCopyWithImpl<$Res, LeadExplorerItem>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      Lead lead,
      List<LeadPropertyCardModelNotPopulated> mappings});

  $LeadCopyWith<$Res> get lead;
}

/// @nodoc
class _$LeadExplorerItemCopyWithImpl<$Res, $Val extends LeadExplorerItem>
    implements $LeadExplorerItemCopyWith<$Res> {
  _$LeadExplorerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? mappings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      mappings: null == mappings
          ? _value.mappings
          : mappings // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModelNotPopulated>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_value.lead, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadExplorerItemImplCopyWith<$Res>
    implements $LeadExplorerItemCopyWith<$Res> {
  factory _$$LeadExplorerItemImplCopyWith(_$LeadExplorerItemImpl value,
          $Res Function(_$LeadExplorerItemImpl) then) =
      __$$LeadExplorerItemImplCopyWithImpl<$Res>;
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
class __$$LeadExplorerItemImplCopyWithImpl<$Res>
    extends _$LeadExplorerItemCopyWithImpl<$Res, _$LeadExplorerItemImpl>
    implements _$$LeadExplorerItemImplCopyWith<$Res> {
  __$$LeadExplorerItemImplCopyWithImpl(_$LeadExplorerItemImpl _value,
      $Res Function(_$LeadExplorerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? mappings = null,
  }) {
    return _then(_$LeadExplorerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      mappings: null == mappings
          ? _value._mappings
          : mappings // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModelNotPopulated>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadExplorerItemImpl implements _LeadExplorerItem {
  const _$LeadExplorerItemImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.lead,
      required final List<LeadPropertyCardModelNotPopulated> mappings})
      : _mappings = mappings;

  factory _$LeadExplorerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadExplorerItemImplFromJson(json);

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

  @override
  String toString() {
    return 'LeadExplorerItem(id: $id, lead: $lead, mappings: $mappings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadExplorerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            const DeepCollectionEquality().equals(other._mappings, _mappings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lead, const DeepCollectionEquality().hash(_mappings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadExplorerItemImplCopyWith<_$LeadExplorerItemImpl> get copyWith =>
      __$$LeadExplorerItemImplCopyWithImpl<_$LeadExplorerItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadExplorerItemImplToJson(
      this,
    );
  }
}

abstract class _LeadExplorerItem implements LeadExplorerItem {
  const factory _LeadExplorerItem(
          {@JsonKey(readValue: readId) required final String id,
          required final Lead lead,
          required final List<LeadPropertyCardModelNotPopulated> mappings}) =
      _$LeadExplorerItemImpl;

  factory _LeadExplorerItem.fromJson(Map<String, dynamic> json) =
      _$LeadExplorerItemImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  Lead get lead;
  @override
  List<LeadPropertyCardModelNotPopulated> get mappings;
  @override
  @JsonKey(ignore: true)
  _$$LeadExplorerItemImplCopyWith<_$LeadExplorerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
