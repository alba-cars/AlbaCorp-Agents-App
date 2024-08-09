import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';

import 'enquiries_state.dart';

@injectable
class EnquiriesCubit extends Cubit<EnquiriesState> {
  EnquiriesCubit({required this.activityRepo})
      : super(EnquiriesState.initial());

  final ActivityRepo activityRepo;

  //  Enquiries are the one which are marked as hot leads in the system based on the leadsource we get the data
  fetchFreshEnquiries({Paginator? paginator}) async {
    // Fetching hot fresh leads

    if (paginator == null) {
      emit(EnquiriesState.loading());
    }
    final Result<List<Activity>> result = await activityRepo
        .fetchActivitiesSorted(
            filter: {"leadSourceType": "hot", "leadStatus": "Fresh"},
            paginator: paginator);
    switch (result) {
      case (Success<List<Activity>> success):
        _handleEnquiriesFetchSuccess(success.value, success.paginator);
        break;
      case (Error error):
        _handleEnquiriesFetchError(error.exception);
        break;
    }
  }

  fetchFollowUpEnquiries() async {
    // Fetching hot follow ups
    emit(EnquiriesState.loading());

    DateTime d = DateTime.now();
    final Result<List<Activity>> result =
        await activityRepo.fetchActivitiesSorted(filter: {
      "leadSourceType": 'hot',
      "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
      "status": [
        "Pending",
      ],
      "toDate": '${d.year}-${d.month}-${d.day}',
    });

    switch (result) {
      case (Success<List<Activity>> success):
        _handleEnquiriesFetchSuccess(success.value, success.paginator);
        break;
      case (Error error):
        _handleEnquiriesFetchError(error.exception);
        break;
    }
  }

  fetchFavouritesEnquiries() async {
    // Fetching hot prospect
    emit(EnquiriesState.loading());
    final Result<List<Activity>> result = await activityRepo
        .fetchActivitiesSorted(
            filter: {"leadSourceType": "hot", "leadStatus": "Prospect"});
    switch (result) {
      case (Success<List<Activity>> success):
        _handleEnquiriesFetchSuccess(success.value, success.paginator);
        break;
      case (Error error):
        _handleEnquiriesFetchError(error.exception);
        break;
    }
  }

  Future<void> fetchMoreEnquiries(Paginator paginator) async {
    final Result<List<Activity>> result =
        await activityRepo.fetchActivitiesSorted(
      filter: {"leadSourceType": "hot", "leadStatus": "Fresh"},
      paginator: paginator,
    );
    switch (result) {
      case Success<List<Activity>> success:
        _handleEnquiriesFetchSuccess(
          success.value,
          success.paginator,
        );
        break;
      case Error error:
        _handleEnquiriesFetchError(error.exception);
        break;
    }
  }

  void _handleEnquiriesFetchSuccess(
      List<Activity> activities, Paginator? paginator) {
    emit(EnquiriesState.loaded(activities: activities));
  }

  void _handleEnquiriesFetchError(String exception) {
    emit(EnquiriesState.error(errorMessage: exception));
  }
}
