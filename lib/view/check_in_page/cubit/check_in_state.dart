part of 'check_in_cubit.dart';

@freezed
class CheckInState with _$CheckInState {
  const factory CheckInState({
    @Default(false) bool isLoading,
    @Default(false) bool isInOffice,
    @Default("Loading location...") String currentAddress,
    Position? currentPosition,
    @Default(false) bool hasLocationPermission,
    String? errorMessage,
    @Default(false) bool isCheckedIn,
  }) = _CheckInState;
}

// Class to mimic the Position data from Geolocator
class Position {
  final double latitude;
  final double longitude;

  Position({required this.latitude, required this.longitude});
}
