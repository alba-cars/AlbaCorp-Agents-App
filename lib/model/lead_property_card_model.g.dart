// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_property_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadPropertyCardModelImpl _$$LeadPropertyCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeadPropertyCardModelImpl(
      id: readId(json, 'id') as String,
      lead: Lead.fromJson(json['lead'] as Map<String, dynamic>),
      propertyCard: PropertyCardDetailsModel.fromJson(
          json['propertyCard'] as Map<String, dynamic>),
      wasOwner: json['wasOwner'] as bool? ?? false,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num?)?.toDouble(),
      createdBy: CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$LeadPropertyCardModelImplToJson(
        _$LeadPropertyCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead': instance.lead,
      'propertyCard': instance.propertyCard,
      'wasOwner': instance.wasOwner,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$LeadPropertyCardModelNotPopulatedImpl
    _$$LeadPropertyCardModelNotPopulatedImplFromJson(
            Map<String, dynamic> json) =>
        _$LeadPropertyCardModelNotPopulatedImpl(
          id: readId(json, 'id') as String,
          lead: json['lead'] as String,
          propertyCard: PropertyCard.fromJson(
              json['propertyCard'] as Map<String, dynamic>),
          wasOwner: json['wasOwner'] as bool? ?? false,
          date: json['date'] == null
              ? null
              : DateTime.parse(json['date'] as String),
          amount: (json['amount'] as num?)?.toDouble(),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$LeadPropertyCardModelNotPopulatedImplToJson(
        _$LeadPropertyCardModelNotPopulatedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead': instance.lead,
      'propertyCard': instance.propertyCard,
      'wasOwner': instance.wasOwner,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$LeadExplorerItemImpl _$$LeadExplorerItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LeadExplorerItemImpl(
      id: readId(json, 'id') as String,
      lead: Lead.fromJson(json['lead'] as Map<String, dynamic>),
      mappings: (json['mappings'] as List<dynamic>)
          .map((e) => LeadPropertyCardModelNotPopulated.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeadExplorerItemImplToJson(
        _$LeadExplorerItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead': instance.lead,
      'mappings': instance.mappings,
    };
