import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'listing_detail_state.dart';
part 'listing_detail_cubit.freezed.dart';

@injectable
class ListingDetailCubit extends Cubit<ListingDetailState> {
  ListingDetailCubit(this._listingsRepo, @factoryParam String id)
      : super(ListingDetailState(listingId: id));

  final ListingsRepo _listingsRepo;

  Future<void> getListingDetails() async {
    emit(state.copyWith(getListingDetailsStatus: Status.loading));
    final result =
        await _listingsRepo.getListingDetails(listingId: state.listingId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getListingDetailsStatus: Status.success, listing: s.value));
        getListingActivities();
        break;
      case (Error e):
        emit(state.copyWith(
            getListingDetailsStatus: Status.failure,
            getListingError: e.exception));

        break;
    }
  }

  Future<void> getListingActivities() async {
    emit(state.copyWith(getActivitiesStatus: Status.loading));
    final result =
        await _listingsRepo.getListingActivities(listingId: state.listingId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getActivitiesStatus: Status.success, activities: s.value));
        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: Status.failure,
            getActivitiesError: e.exception));

        break;
    }
  }
}
