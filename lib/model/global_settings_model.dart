import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_settings_model.freezed.dart';
part 'global_settings_model.g.dart';

@freezed
class GlobalSettings with _$GlobalSettings {
  const factory GlobalSettings({
    required String id,
    String? timeUntilTicketArchived,
    required CheckoutLimit checkoutLimit,
     String? unAssignLeadAfter,
     DateTime? createdAt,
     DateTime? updatedAt,
     String? blockLeadFor,
     String? dealReminderAfter,
     String? newLeadFlagDateLimit,
    @Default(false) enablePbx,
  }) = _GlobalSettings;

  factory GlobalSettings.fromJson(Map<String, dynamic> json) =>
      _$GlobalSettingsFromJson(json);
}

@freezed
class CheckoutLimit with _$CheckoutLimit {
  const factory CheckoutLimit({
    required int limit,
    required int tolerance,
    required String unassignAfter,
  }) = _CheckoutLimit;

  factory CheckoutLimit.fromJson(Map<String, dynamic> json) =>
      _$CheckoutLimitFromJson(json);
}
