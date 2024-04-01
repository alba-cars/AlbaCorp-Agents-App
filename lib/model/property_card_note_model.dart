import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/user.dart';

part 'property_card_note_model.freezed.dart';
part 'property_card_note_model.g.dart';

@freezed
class PropertyCardNoteModel with _$PropertyCardNoteModel {
  const factory PropertyCardNoteModel({
    @JsonKey(name: 'propertyCard') String? propertyCard,
    @JsonKey(name: 'createdBy') User? createdBy,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'id') String? id,
  }) = _PropertyCardNoteModel;

  factory PropertyCardNoteModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardNoteModelFromJson(json);
}
