import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../model/paginator.dart';
import '../../../model/property_model.dart';
import '../../../util/status.dart';

part 'listings_state.dart';
part 'listings_cubit.freezed.dart';

@injectable
class ListingsCubit extends Cubit<ListingsState> {
  ListingsCubit(this._listingsRepo, this._explorerRepo)
      : super(ListingsState());

  final ListingsRepo _listingsRepo;
  final ExplorerRepo _explorerRepo;

  Future<void> getListings({bool refresh = false}) async {
    if (refresh || state.listingsPaginator == null) {
      emit(state.copyWith(
          getListingsStatus: Status.loading,
          listingsPaginator: null,
          listings: []));
    } else {
      emit(state.copyWith(getListingsStatus: Status.loadingMore));
    }

    final result =
        await _listingsRepo.getListings(paginator: state.listingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            listings: [...state.listings, ...s.value],
            listingsPaginator: s.paginator,
            getListingsStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getListingsStatus: Status.failure, getListingsError: e.exception));
    }
  }

  Future<void> getPocketListings({bool refresh = false}) async {
    if (refresh || state.pocketListingsPaginator == null) {
      emit(state.copyWith(
          getPocketListingsStatus: Status.loading,
          pocketListingsPaginator: null,
          pocketListings: []));
    } else {
      emit(state.copyWith(getPocketListingsStatus: Status.loadingMore));
    }

    final result = await _explorerRepo.getPocketListings(
        paginator: state.pocketListingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            pocketListings: [...state.pocketListings, ...s.value],
            pocketListingsPaginator: s.paginator,
            getPocketListingsStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getPocketListingsStatus: Status.failure,
            getListingsError: e.exception));
    }
  }

  void setSelectedTab(int index) {
    if (state.currentTab != index) {
      emit(state.copyWith(currentTab: index));
      if (index == 0) {
        getListings(refresh: true);
      } else {
        getPocketListings(refresh: true);
      }
    }
  }
}
