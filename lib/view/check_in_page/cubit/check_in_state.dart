part of 'check_in_cubit.dart';

@freezed
class CheckInState with _$CheckInState {
  const factory CheckInState({
    @Default(AppStatus.init)AppStatus checkInStatus,
    String? checkInError,
  }) = _CheckInState;
}
