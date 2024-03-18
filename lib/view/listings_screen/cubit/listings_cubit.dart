import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../model/building_model.dart';
import '../../../model/community_model.dart';
import '../../../model/paginator.dart';
import '../../../model/property_model.dart';
import '../../../model/property_type_model.dart';
import '../../../util/status.dart';

part 'listings_state.dart';
part 'listings_cubit.freezed.dart';

@injectable
class ListingsCubit extends Cubit<ListingsState> {
  ListingsCubit(this._listingsRepo, this._explorerRepo)
      : super(ListingsState()) {
    getPropertyTypes();
  }

  final ListingsRepo _listingsRepo;
  final ExplorerRepo _explorerRepo;

  Future<void> getListings({
    bool refresh = false,
  }) async {
    if (refresh || state.listingsPaginator == null) {
      emit(state.copyWith(
          getListingsStatus: Status.loading,
          listingsPaginator: null,
          listings: []));
    } else {
      emit(state.copyWith(getListingsStatus: Status.loadingMore));
    }

    final result = await _listingsRepo.getListings(
        filter: state.listingsFilter,
        search: state.listingsSearch,
        paginator: state.listingsPaginator);
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

  Future<void> getPocketListings({
    bool refresh = false,
  }) async {
    if (refresh || state.pocketListingsPaginator == null) {
      emit(state.copyWith(
          getPocketListingsStatus: Status.loading,
          pocketListingsPaginator: null,
          pocketListings: []));
    } else {
      emit(state.copyWith(getPocketListingsStatus: Status.loadingMore));
    }

    final result = await _explorerRepo.getPocketListings(
        filter: state.pocketListingsFilter,
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

  void searchListings(String? search) {
    emit(state.copyWith(listingsSearch: search));
    getListings(refresh: true);
  }

  void searchPocketListings(String? search) {
    emit(state.copyWith(pocketListingsSearch: search));
    getPocketListings(refresh: true);
  }

  void setListingsFilters(Map<String, dynamic>? filter) {
    emit(state.copyWith(listingsFilter: filter));
    getListings(refresh: true);
  }

  void setPocketListingFilters(Map<String, dynamic>? filter) {
    emit(state.copyWith(pocketListingsFilter: filter));
    getPocketListings(refresh: true);
  }

  Future<List<Community>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: Status.loadingMore));
    final result = await _listingsRepo.getCommunities(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            communityList: s.value, getCommunityListStatus: Status.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getCommunityListStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<List<Building>> getBuildings({String? search}) async {
    emit(state.copyWith(getBuildingListStatus: Status.loadingMore));
    final result = await _listingsRepo.getBuildingNames(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            buildingList: s.value, getBuildingListStatus: Status.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getBuildingListStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<void> getPropertyTypes() async {
    emit(state.copyWith(getPropertyTypeListStatus: Status.loadingMore));
    final result = await _listingsRepo.getPropertyTypes();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyTypeList: s.value,
            getPropertyTypeListStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
          getPropertyTypeListStatus: Status.failure,
        ));
    }
  }
}
