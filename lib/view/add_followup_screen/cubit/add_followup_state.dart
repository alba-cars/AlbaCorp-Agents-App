part of 'add_followup_cubit.dart';

@freezed
class AddFollowupState with _$AddFollowupState {
  const factory AddFollowupState({
    Lead? lead,
    @Default(AppStatus.init) AppStatus getLeadStatus,
    String? getLeadError,
    @Default(AppStatus.init) AppStatus addFollowupStatus,
    String? addFollowupError,
    NotificationModel? notificationModel,
  }) = _AddFollowupState;
}
