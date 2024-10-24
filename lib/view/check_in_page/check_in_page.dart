import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/widgets/button.dart';

class CheckInPage extends StatelessWidget {
  static const routeName = '/CheckInPAge';
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OfficeCheckInPage();
  }
}

class OfficeCheckInPage extends StatefulWidget {
  @override
  _OfficeCheckInPageState createState() => _OfficeCheckInPageState();
}

class _OfficeCheckInPageState extends State<OfficeCheckInPage> {
  GoogleMapController? mapController;
  Position? currentPosition;
  bool isInOffice = false;
  String currentAddress = "Loading location...";
  final LatLng officeLocation =
      const LatLng(25.0750, 55.1375); // Dubai coordinates

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      
      return ;
    }
  }
Logger().d(permission);
    if (permission == LocationPermission.always ||permission == LocationPermission.whileInUse  ) {
      _getCurrentLocation();
    }
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        setState(() {
          currentAddress = [
            if (place.name?.isNotEmpty ?? false) place.name,
            if (place.subLocality?.isNotEmpty ?? false) place.subLocality,
            if (place.locality?.isNotEmpty ?? false) place.locality,
          ].where((element) => element != null).join(', ');

          // Fallback if address components are empty
          if (currentAddress.isEmpty) {
            currentAddress = "${position.latitude}, ${position.longitude}";
          }
        });
      }
    } catch (e) {
      print('Error getting address: $e');
      setState(() {
        currentAddress = "${position.latitude}, ${position.longitude}";
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.high),
      );
      setState(() {
        currentPosition = position;
        // Check if user is within 100 meters of the office
        isInOffice = Geolocator.distanceBetween(
              position.latitude,
              position.longitude,
              officeLocation.latitude,
              officeLocation.longitude,
            ) <=
            100;
      });

      await _getAddressFromLatLng(position);

      // Move camera to current location
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLngZoom(
            LatLng(position.latitude, position.longitude),
            15,
          ),
        );
      }
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: officeLocation,
              zoom: 15,
            ),
            onMapCreated: (controller) {
              mapController = controller;
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),

          // Status Card
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: isInOffice ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'You are ${isInOffice ? 'in' : 'not in'} the office.',
                          style: TextStyle(
                            color: isInOffice ? Theme.of(context).primaryColor : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.grey),
                        const SizedBox(width: 8),
                        Text(currentAddress),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.grey),
                        const SizedBox(width: 8),
                        Text(DateFormat('hh:mm a').format(DateTime.now())),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Sheet
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Marketing 2nd Shift',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 16),
                      const SizedBox(width: 4),
                      const Text('10:00 - 19:00'),
                      const SizedBox(width: 8),
                      const Icon(Icons.location_on, size: 16),
                       Text(currentAddress),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: AppPrimaryButton(
                          fullWidth: true,
                          onTap: () {},
                          isDisabled: !isInOffice,
                          text: 'Check In',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: AppPrimaryButton(
                          fullWidth: true,
                          outlined: true,
                          onTap: () {},
                          text: 'Skip',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
