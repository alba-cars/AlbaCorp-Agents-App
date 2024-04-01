// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_card_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyCardNoteModelImpl _$$PropertyCardNoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyCardNoteModelImpl(
      propertyCard: json['propertyCard'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : User.fromJson(json['createdBy'] as Map<String, dynamic>),
      message: json['message'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PropertyCardNoteModelImplToJson(
        _$PropertyCardNoteModelImpl instance) =>
    <String, dynamic>{
      'propertyCard': instance.propertyCard,
      'createdBy': instance.createdBy,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };
