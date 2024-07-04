// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_call_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PendingCallFeedbackImpl _$$PendingCallFeedbackImplFromJson(
        Map<String, dynamic> json) =>
    _$PendingCallFeedbackImpl(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String,
      callDirection: $enumDecode(_$CallDirectionEnumMap, json['callDirection']),
      feedback: json['feedback'] as String?,
      isSynced: json['isSynced'] as bool? ?? false,
    );

Map<String, dynamic> _$$PendingCallFeedbackImplToJson(
        _$PendingCallFeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'callDirection': _$CallDirectionEnumMap[instance.callDirection]!,
      'feedback': instance.feedback,
      'isSynced': instance.isSynced,
    };

const _$CallDirectionEnumMap = {
  CallDirection.incoming: 'incoming',
  CallDirection.outgoing: 'outgoing',
};
