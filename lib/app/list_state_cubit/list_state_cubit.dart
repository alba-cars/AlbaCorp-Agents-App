import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/deals_screen/deals_screen.dart';
import 'package:uuid/uuid.dart';

import '../../data/repository/explorer_repo.dart';
import '../../model/building_model.dart';
import '../../model/community_team_model.dart';
import '../../model/lead_source_model.dart';
import '../../model/paginator.dart';
import '../../model/property_type_model.dart';
import '../../service_locator/injectable.dart';
import '../../util/property_price.dart';
import '../../util/result.dart';
import '../../util/status.dart';
import '../../view/enquiries_screen/widget/leadsource_filter_widget.dart';
import '../auth_bloc/auth_bloc.dart';

part 'list_state_state.dart';
part 'list_state_cubit.freezed.dart';

@lazySingleton
class ListStateCubit extends Cubit<ListStateState> {
  ListStateCubit(this._explorerRepo, this._listingsRepo, this._leadRepo) : super(ListStateState()){
    getPropertyTypes();
  }

  final ExplorerRepo _explorerRepo;
  final ListingsRepo _listingsRepo;
  final LeadRepo _leadRepo;

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

  Future<List<CommunityTeamModel>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: AppStatus.loadingMore));
    if (state.communityList.isNotEmpty && search != null) {
      return state.communityList
          .where((e) => e.teamName.contains(search))
          .toList();
    } else {
      final result = await _explorerRepo.getCommunityTeams(
          agentId: getIt<AuthBloc>().state.agent!.id);
      switch (result) {
        case (Success<List<CommunityTeamModel>> s):
          emit(state.copyWith(
              communityList:
                  s.value.where((e) => e.communities.isNotEmpty).toList(),
              getCommunityListStatus: AppStatus.success));
          return s.value;
        case (Error e):
          emit(state.copyWith(
            getCommunityListStatus: AppStatus.failure,
          ));
          return [];
      }
    }
  }
  Future<List<CommunityName>> getPlaces({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: AppStatus.loadingMore));
    if (state.placesList.isNotEmpty && search != null) {
      return state.placesList
          .where((e) => e.community.contains(search))
          .toList();
    } else {
      final result = await _explorerRepo.getCommunityTeams(
          agentId: getIt<AuthBloc>().state.agent!.id);
      switch (result) {
        case (Success<List<CommunityTeamModel>> s):
           emit(state.copyWith(
              placesList:
                  s.value.expand((e)=>e.communities).toList(),
              getPlacesListStatus: AppStatus.success));
          return s.value.expand((e)=>e.communities).toList();
        case (Error e):
          emit(state.copyWith(
            getPlacesListStatus: AppStatus.failure,
          ));
          return [];
      }
    }
  }

  Future<List<Building>> getBuildings(
      {String? search, List<String>? community,bool refresh = false}) async {
    emit(state.copyWith(getBuildingListStatus: AppStatus.loadingMore));
    if(refresh){
      emit(state.copyWith(buildingsPaginator: null));
    }

    final result = await _listingsRepo.getBuildingNames(
        search: search, communityId: community,paginator: refresh?null:state.buildingsPaginator);
    switch (result) {
      case (Success s):
      final List<Building> buildings =refresh? s.value:[...state.buildingList,...s.value];
        emit(state.copyWith(
            buildingList:buildings, getBuildingListStatus: AppStatus.success,buildingsPaginator: s.paginator));
        return buildings;

      case (Error e):
        emit(state.copyWith(
          getBuildingListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<void> getPropertyTypes() async {
    emit(state.copyWith(getPropertyTypeListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getPropertyTypes();
    switch (result) {
      case (Success s):
      final properties = sortPropertyTypes(s.value);
        emit(state.copyWith(
            propertyTypeList: properties,
            getPropertyTypeListStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
          getPropertyTypeListStatus: AppStatus.failure,
        ));
    }
  }

   Future<List<LeadSource>> getLeadSources(
      {LeadSourceType leadSourceType = LeadSourceType.All,
      String? search,
      bool isRefresh = false
      }) async {
    if(search != state.leadSourceSearch || isRefresh){
       emit(state.copyWith(leadSourcePaginator: null,leadSources: [],leadSourceSearch: search));
    }else if(!(state.leadSourcePaginator?.hasNextPage ??false)){
      return state.leadSources ?? [];
    }
    emit(state.copyWith(getLeadSourcestatus: AppStatus.loading));

    final result = await _leadRepo.getLeadSourcesRefactored(
        leadSourceType: leadSourceType, search: search, paginator: state.leadSourcePaginator);

    switch (result) {
      case (Success success):
       return _handleSucccess(success);
      case (Error error):
       return  _handleError(error);
    }
  }

  List<LeadSource> _handleSucccess(Success success) {
    final List<LeadSource> list =[...(state.leadSources ?? []),...(success.value as List<LeadSource>)];
    emit(state.copyWith(
        getLeadSourcestatus: AppStatus.success,
        leadSourcePaginator: success.paginator,
        leadSources: list));
        return list;
  }

  List<LeadSource> _handleError(Error error) {
    emit(state.copyWith(getLeadSourcestatus: AppStatus.failure, leadSourceError: error.exception));
    return <LeadSource>[];
  }
}
