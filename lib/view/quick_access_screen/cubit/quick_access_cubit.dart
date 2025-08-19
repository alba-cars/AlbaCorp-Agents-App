import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../data/repository/quick_access_repo.dart';
import '../../../model/quick_access_model.dart';
import '../../../util/result.dart';

part 'quick_access_state.dart';

@injectable
class QuickAccessCubit extends Cubit<QuickAccessState> {
  final QuickAccessRepo _quickAccessRepo;
  QuickAccessCubit(this._quickAccessRepo) : super(const QuickAccessState()) {
    fetchQuickAccessData();
  }

  Future<void> fetchQuickAccessData() async {
    emit(state.copyWith(status: QuickAccessStatus.loading));
    final result = await _quickAccessRepo.getSections();
    switch (result) {
      case Success(value: final sections):
        emit(state.copyWith(
            status: QuickAccessStatus.loaded, sections: sections));
      case Error(exception: final msg):
        emit(
            state.copyWith(status: QuickAccessStatus.error, errorMessage: msg));
    }
  }
}
