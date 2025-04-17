import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/widgets/button.dart';

import '../../service_locator/injectable.dart';
import 'cubit/check_in_cubit.dart';

class CheckInPage extends StatelessWidget {
  static const routeName = '/CheckInPAge';
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInCubit>()..initialize(),
      child: const OfficeCheckInPage(),
    );
  }
}

class OfficeCheckInPage extends StatefulWidget {
  const OfficeCheckInPage({super.key});

  @override
  _OfficeCheckInPageState createState() => _OfficeCheckInPageState();
}

class _OfficeCheckInPageState extends State<OfficeCheckInPage> {
  GoogleMapController? mapController;
  final LatLng officeLocation =
      const LatLng(25.0750, 55.1375); // Dubai coordinates

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckInCubit, CheckInState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }

        if (state.isCheckedIn) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Successfully checked in!')),
          );
        }
      },
      builder: (context, state) {
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

                  // Move camera to current position if available
                  if (state.currentPosition != null) {
                    mapController!.animateCamera(
                      CameraUpdate.newLatLngZoom(
                        LatLng(
                          state.currentPosition!.latitude,
                          state.currentPosition!.longitude,
                        ),
                        15,
                      ),
                    );
                  }
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
                              color: state.isInOffice
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'You are ${state.isInOffice ? 'in' : 'not in'} the office.',
                              style: TextStyle(
                                color: state.isInOffice
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.location_on, color: Colors.grey),
                            const SizedBox(width: 8),
                            Expanded(child: Text(state.currentAddress)),
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
                        if (state.isLoading)
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinearProgressIndicator(),
                          ),
                      ],
                    ),
                  ),
                ),
              ),

              // Refresh location button
              Positioned(
                top: 160,
                right: 20,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    context.read<CheckInCubit>().refreshLocation();
                  },
                  child: const Icon(Icons.refresh),
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
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
                          Expanded(child: Text(state.currentAddress)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: AppPrimaryButton(
                              fullWidth: true,
                              onTap: state.isInOffice && !state.isLoading
                                  ? () {
                                      // Replace with actual employee ID and shift ID
                                      context.read<CheckInCubit>().checkIn(
                                          getIt<AuthBloc>().state.agent?.id ??
                                              '' // employeeId
                                          // shiftId
                                          );
                                    }
                                  : () {},
                              isDisabled: !state.isInOffice ||
                                  state.isLoading ||
                                  state.isCheckedIn,
                              text:
                                  state.isCheckedIn ? 'Checked In' : 'Check In',
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
                              onTap: () {
                                Navigator.of(context).pop();
                              },
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
      },
    );
  }
}
