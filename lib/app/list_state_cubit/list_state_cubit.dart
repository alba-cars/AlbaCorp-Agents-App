import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'list_state_state.dart';
part 'list_state_cubit.freezed.dart';

@lazySingleton
class ListStateCubit extends Cubit<ListStateState> {
  ListStateCubit() : super(ListStateState());

  void setChangedTaskListState() {
    Future.delayed(Duration(seconds: 4), () {
      emit(state.copyWith(
          taskSortedView: Uuid().v4(), tasksCategorizedView: Uuid().v4()));
    });
  }

  void setChangedLeadsListState() {
    emit(state.copyWith(leadsView: Uuid().v4()));
  }

  void setChangedListingsListState() {
    emit(state.copyWith(listingsView: Uuid().v4()));
  }

  void setChangedPocketListingListState() {
    emit(state.copyWith(pocketListingsView: Uuid().v4()));
  }

  void setChangedDealsListState() {
    emit(state.copyWith(dealsView: Uuid().v4()));
  }

  void setChangedListingAcquiredListState() {
    emit(state.copyWith(listingAcquiredView: Uuid().v4()));
  }
}
