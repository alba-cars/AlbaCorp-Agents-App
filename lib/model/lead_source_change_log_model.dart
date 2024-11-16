import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/lead_source_model.dart';

part 'lead_source_change_log_model.freezed.dart';
part 'lead_source_change_log_model.g.dart';

@freezed
class LeadSourceChangeLogModel with _$LeadSourceChangeLogModel {

  const factory LeadSourceChangeLogModel({
      required String id,
      required LeadSource newLead
  }) = _LeadSourceChangeLogModel;
   factory LeadSourceChangeLogModel.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceChangeLogModelFromJson(json);
}
