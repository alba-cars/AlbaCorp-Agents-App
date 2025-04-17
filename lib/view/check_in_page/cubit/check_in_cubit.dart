import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/attendance_repo.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../services/location_service.dart';
part 'check_in_state.dart';
part 'check_in_cubit.freezed.dart';

@injectable
class CheckInCubit extends Cubit<CheckInState> {
  final LocationService _locationService;
  final AttendanceRepo _attendanceService;
  final Logger _logger = Logger();

  // Office coordinates
  final LatLng officeLocation =
      const LatLng(25.0750, 55.1375); // Dubai coordinates

  CheckInCubit(
    this._locationService,
    this._attendanceService,
  ) : super(CheckInState());

  Future<void> initialize() async {
    await requestLocationPermission();
  }

  Future<void> requestLocationPermission() async {
    try {
      final hasPermission = await _locationService.requestLocationPermission();

      emit(state.copyWith(hasLocationPermission: hasPermission));

      if (hasPermission) {
        await getCurrentLocation();
      }
    } catch (e) {
      _logger.e('Error requesting location permission: $e');
      emit(state.copyWith(
        errorMessage: 'Unable to get location permission: $e',
        hasLocationPermission: false,
      ));
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      emit(state.copyWith(isLoading: true));

      final position = await _locationService.getCurrentPosition();

      // Convert geolocator.Position to our Position model
      final customPosition = Position(
        latitude: position.latitude,
        longitude: position.longitude,
      );

      // Calculate if user is within 100 meters of the office
      final isInOffice = geolocator.Geolocator.distanceBetween(
            position.latitude,
            position.longitude,
            officeLocation.latitude,
            officeLocation.longitude,
          ) <=
          100;

      emit(state.copyWith(
        currentPosition: customPosition,
        isInOffice: isInOffice,
        isLoading: false,
      ));

      await getAddressFromLatLng(position);
    } catch (e) {
      _logger.e('Error getting current location: $e');
      emit(state.copyWith(
        errorMessage: 'Unable to get current location: $e',
        isLoading: false,
      ));
    }
  }

  Future<void> getAddressFromLatLng(geolocator.Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        final address = [
          if (place.name?.isNotEmpty ?? false) place.name,
          if (place.subLocality?.isNotEmpty ?? false) place.subLocality,
          if (place.locality?.isNotEmpty ?? false) place.locality,
        ].where((element) => element != null).join(', ');

        // Fallback if address components are empty
        emit(state.copyWith(
          currentAddress: address.isNotEmpty
              ? address
              : "${position.latitude}, ${position.longitude}",
        ));
      }
    } catch (e) {
      _logger.e('Error getting address: $e');
      emit(state.copyWith(
        currentAddress: "${position.latitude}, ${position.longitude}",
      ));
    }
  }

  Future<void> checkIn(String employeeId) async {
    if (!state.isInOffice) {
      emit(state.copyWith(
        errorMessage: 'You must be in the office to check in',
      ));
      return;
    }

    try {
      emit(state.copyWith(isLoading: true));

      final location = {
        'latitude': state.currentPosition!.latitude,
        'longitude': state.currentPosition!.longitude,
        'address': state.currentAddress,
      };

      final result = await _attendanceService.checkIn(
        employeeId: employeeId,
        location: location,
      );

      switch (result) {
        case (Success s):
          emit(state.copyWith(isCheckedIn: true, isLoading: false));
          break;
        case (Error e):
          emit(state.copyWith(
              isLoading: false, errorMessage: e.exception, isCheckedIn: false));
      }
    } catch (e) {
      _logger.e('Error checking in: $e');
      emit(state.copyWith(
        errorMessage: 'Failed to check in: $e',
        isLoading: false,
      ));
    }
  }

  Future<void> refreshLocation() async {
    if (state.hasLocationPermission) {
      await getCurrentLocation();
    } else {
      await requestLocationPermission();
    }
  }
}
