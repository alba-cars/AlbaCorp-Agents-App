import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explorer_screen_state.dart';
part 'explorer_screen_cubit.freezed.dart';

@injectable
class ExplorerScreenCubit extends Cubit<ExplorerScreenState> {
  ExplorerScreenCubit() : super(ExplorerScreenState());
}
