import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/util/status.dart';

part 'check_in_state.dart';
part 'check_in_cubit.freezed.dart';

class CheckInCubit extends Cubit<CheckInState> {
  CheckInCubit() : super(CheckInState());
}
