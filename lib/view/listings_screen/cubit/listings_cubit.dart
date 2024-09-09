import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/amenity_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
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
  ListingsCubit(this._listingsRepo, this._explorerRepo, this._agentRepo)
      : super(ListingsState()) {
    getPropertyTypes();
    getAmenities();
    getAgents();
  }

  final ListingsRepo _listingsRepo;
  final ExplorerRepo _explorerRepo;
  final AgentRepo _agentRepo;

  Future<void> getListings({
    bool refresh = false,
  }) async {
    if (refresh || state.listingsPaginator == null) {
      emit(state.copyWith(
          getListingsStatus: AppStatus.loading,
          listingsPaginator: null,
          listings: []));
    } else {
      emit(state.copyWith(getListingsStatus: AppStatus.loadingMore));
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
            getListingsStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getListingsStatus: AppStatus.failure,
            getListingsError: e.exception));
    }
  }

  Future<void> getMyListings({
    bool refresh = false,
  }) async {
    if (refresh || state.myListingsPaginator == null) {
      emit(state.copyWith(
          getMyListingsStatus: AppStatus.loading,
          myListingsPaginator: null,
          myListings: []));
    } else {
      emit(state.copyWith(getMyListingsStatus: AppStatus.loadingMore));
    }

    final result =
        await _listingsRepo.getMyListings(paginator: state.myListingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            myListings: [...state.myListings, ...s.value],
            myListingsPaginator: s.paginator,
            getMyListingsStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getMyListingsStatus: AppStatus.failure,
            getMyListingsError: e.exception));
    }
  }

  Future<void> getPocketListings({
    bool refresh = false,
  }) async {
    if (refresh || state.pocketListingsPaginator == null) {
      emit(state.copyWith(
          getPocketListingsStatus: AppStatus.loading,
          pocketListingsPaginator: null,
          pocketListings: []));
    } else {
      emit(state.copyWith(getPocketListingsStatus: AppStatus.loadingMore));
    }

    final result = await _explorerRepo.getPocketListings(
        filter: state.pocketListingsFilter,
        paginator: state.pocketListingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            pocketListings: [...state.pocketListings, ...s.value],
            pocketListingsPaginator: s.paginator,
            getPocketListingsStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getPocketListingsStatus: AppStatus.failure,
            getListingsError: e.exception));
    }
  }

  Future<void> getMyPocketListings({
    bool refresh = false,
  }) async {
    if (refresh || state.myPocketListingsPaginator == null) {
      emit(state.copyWith(
          getMyPocketListingsStatus: AppStatus.loading,
          myPocketListingsPaginator: null,
          myPocketListings: []));
    } else {
      emit(state.copyWith(getMyPocketListingsStatus: AppStatus.loadingMore));
    }
    final result = await _explorerRepo.getPocketListings(
        filter: {"currentAgent": getIt<AuthBloc>().state.agent?.id},
        paginator: state.myPocketListingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            myPocketListings: [...state.myPocketListings, ...s.value],
            myPocketListingsPaginator: s.paginator,
            getMyPocketListingsStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getMyPocketListingsStatus: AppStatus.failure,
            getMyPocketListingsError: e.exception));
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

  Future<List<Agent>> getAgents({String? search}) async {
    emit(state.copyWith(getAgentListStatus: AppStatus.loadingMore));
    final result = await _agentRepo.getAgents();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            agentList: s.value, getAgentListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getAgentListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<List<Community>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getCommunities(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            communityList: s.value, getCommunityListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getCommunityListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<List<Building>> getBuildings({String? search}) async {
    emit(state.copyWith(getBuildingListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getBuildingNames(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            buildingList: s.value, getBuildingListStatus: AppStatus.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getBuildingListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<List<Amenity>> getAmenities({String? search}) async {
    if (state.amenityList.isNotEmpty && search != null) {
      return state.amenityList
          .where((element) =>
              element.amenity.toLowerCase().contains(search.toLowerCase()))
          .toList();
    }
    emit(state.copyWith(getAmenityListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getAmenities(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            amenityList: s.value, getAmenityListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getAmenityListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<void> getPropertyTypes() async {
    emit(state.copyWith(getPropertyTypeListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getPropertyTypes();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyTypeList: s.value,
            getPropertyTypeListStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
          getPropertyTypeListStatus: AppStatus.failure,
        ));
    }
  }
}
