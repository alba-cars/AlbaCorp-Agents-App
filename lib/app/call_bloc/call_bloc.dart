import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:phone_state/phone_state.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/data/remote_data/activity_data.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/service_locator/injectable.config.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../util/status.dart';

part 'call_event.dart';
part 'call_state.dart';
part 'call_bloc.freezed.dart';

@singleton
class CallBloc extends Bloc<CallEvent, CallState> {
  CallBloc(this._activityRepo) : super(CallState()) {
    on<_Started>(_onStarted);
    on<_CallStarted>(_onCallStarted);
    on<_CallEnded>(_onCallEnded);
    on<_UpdateActivity>(_onUpdateActivity);
    add(_Started());
  }

  StreamSubscription? phoneCallStateSubscription;
  final ActivityRepo _activityRepo;

  FutureOr<void> _onStarted(_Started event, Emitter<CallState> emit) {
    phoneCallStateSubscription = PhoneState.stream.listen((event) {
      if (event.status == PhoneStateStatus.CALL_STARTED) {
      } else if (event.status == PhoneStateStatus.CALL_ENDED) {
        add(_CallEnded());
      }
    });
  }

  FutureOr<void> _onCallStarted(
      _CallStarted event, Emitter<CallState> emit) async {
    emit(state.copyWith(
      phoneCallStatus: PhoneCallStatus.inCall,
      calledNumber: event.phoneNumber,
      callStartTime: DateTime.now(),
      activityId: event.activityId,
      leadId: event.leadId,
    ));

    await FlutterPhoneDirectCaller.callNumber('tel://${event.phoneNumber}');
    getIt<SharedPreferences>().setBool(event.activityId, true);
  }

  FutureOr<void> _onUpdateActivity(
      _UpdateActivity event, Emitter<CallState> emit) async {
    if (state.activityId == null) {
      return;
    }
    final duration = DateTime.now().millisecondsSinceEpoch -
        (state.callStartTime?.millisecondsSinceEpoch ??
            DateTime.now().millisecondsSinceEpoch);
    final result = await _activityRepo.updateActivity(
        activityId: state.activityId!,
        duration: duration,
        notes: event.note,
        feedback: event.feedback);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            activityId: null,
            phoneCallStatus: PhoneCallStatus.noCall,
            feedbackRequestDialogOpen: false,
            leadId: null,
            calledNumber: null,
            callStartTime: null));
      case (Error e):
    }
  }

  FutureOr<void> _onCallEnded(_CallEnded event, Emitter<CallState> emit) {
    if (state.phoneCallStatus == PhoneCallStatus.inCall) {
      emit(state.copyWith(
          phoneCallStatus: PhoneCallStatus.callEnded,
          feedbackRequestDialogOpen: true));
    }
  }
}
