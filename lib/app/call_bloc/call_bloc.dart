import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phone_state/phone_state.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/linkus_repo.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../util/status.dart';

part 'call_event.dart';
part 'call_state.dart';
part 'call_bloc.freezed.dart';

@singleton
class CallBloc extends Bloc<CallEvent, CallState> {
  CallBloc(this._activityRepo, this._linkusRepo) : super(CallState()) {
    on<_Started>(_onStarted);
    on<_CallStarted>(_onCallStarted);
    on<_CallEnded>(_onCallEnded);
    on<_UpdateActivity>(_onUpdateActivity);
    on<_ClickToCall>(_onClickToCall);
    add(_Started());
  }

  StreamSubscription? phoneCallStateSubscription;
  final ActivityRepo _activityRepo;
  final LinkusRepo _linkusRepo;

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
        makeACallStatus: AppStatus.loading, makeACallError: null));
    final settings = getIt<AuthBloc>().state.globalSettings;
    if (settings?.enablePbx == true) {
      final result = await _linkusRepo.makeACall(
          number: event.phoneNumber, activityId: event.activityId);
      switch (result) {
        case (Success s):
          emit(state.copyWith(makeACallStatus: AppStatus.success));
          break;
        case (Error e):
          emit(state.copyWith(
              makeACallStatus: AppStatus.failure, makeACallError: e.exception));
      }
    } else {
      await getIt<SharedPreferences>().setBool('IgnoreCallFeedback', true);
      await FlutterPhoneDirectCaller.callNumber('tel://${event.phoneNumber}');
    }
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
        completed: true,
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

  FutureOr<void> _onCallEnded(_CallEnded event, Emitter<CallState> emit) {}

  FutureOr<void> _onClickToCall(
      _ClickToCall event, Emitter<CallState> emit) async {
    final settings = getIt<AuthBloc>().state.globalSettings;
    if (settings?.enablePbx == true) {
      await _linkusRepo.makeACall(number: event.phoneNumber);
    } else {
      await getIt<SharedPreferences>().setBool('IgnoreCallFeedback', true);
      await FlutterPhoneDirectCaller.callNumber('tel://${event.phoneNumber}');
    }
  }
}
