import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tickets_screen_state.dart';
part 'tickets_screen_cubit.freezed.dart';

@injectable
class TicketsScreenCubit extends Cubit<TicketsScreenState> {
  TicketsScreenCubit() : super(TicketsScreenState());
}
