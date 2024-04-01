import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';

import '../../../data/repository/lead_repo.dart';
import '../../../data/repository/listings_repo.dart';
import '../../../model/building_model.dart';
import '../../../model/community_model.dart';
import '../../../model/lead_model.dart';
import '../../../model/property_type_model.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';
import '../../../widgets/snackbar.dart';

part 'add_pocket_listing_state.dart';
part 'add_pocket_listing_cubit.freezed.dart';

@injectable
class AddPocketListingCubit extends Cubit<AddPocketListingState> {
  AddPocketListingCubit(this._leadRepo, this._listingsRepo, this._explorerRepo)
      : super(AddPocketListingState()) {
    getPropertyTypes();
  }
  final LeadRepo _leadRepo;
  final ListingsRepo _listingsRepo;
  final ExplorerRepo _explorerRepo;

  ScrollController? _scrollController;

  void setScrollController(ScrollController scrollController) {
    _scrollController = scrollController;
  }

  Future<void> addPocketListing({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addPocketListingStatus: Status.loading));
    final result = await _explorerRepo.addPocketListings(values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addPocketListingStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            addPocketListingStatus: Status.failure,
            addPocketListingError: e.exception));
        break;
    }
  }

  Future<void> onNextPressed(BuildContext context,
      {required TabController tabController,
      required GlobalKey<FormBuilderState> formKey}) async {
    final val = formKey.currentState?.instantValue;
    if (val != null) {
      emit(state.copyWith(rawValues: {...state.rawValues, ...val}));
    }
    final validated = formKey.currentState?.saveAndValidate();
    if (validated != true) {
      return;
    }
    emit(state
        .copyWith(values: {...state.values, ...formKey.currentState!.value}));
    Logger().d(val);
    switch (state.currentTab) {
      case 0:
        emit(state.copyWith(
          currentTab: 1,
        ));
        tabController.animateTo(1);
        _scrollToTop();

        return;
      case 1:
        await addPocketListing(values: state.values);
        if (state.addPocketListingStatus == Status.success) {
          if (context.mounted) {
            showSnackbar(context, 'Successfully added pocket listing',
                SnackBarType.success);
            context.pop(true);
          }
        } else if (state.addPocketListingStatus == Status.failure) {
          if (context.mounted) {
            showSnackbar(context, state.addPocketListingError ?? '',
                SnackBarType.success);
          }
        }
        return;

      default:
    }
  }

  Future<void> onPreviousPressed({required TabController tabController}) async {
    if (state.currentTab != 0) {
      emit(state.copyWith(currentTab: state.currentTab - 1));
      tabController.animateTo(state.currentTab);
    }
  }

  Future<List<Lead>> getLeads({String? search}) async {
    emit(state.copyWith(getLeadListStatus: Status.loadingMore));
    final result = await _leadRepo.getLeads(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadList: s.value, getLeadListStatus: Status.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getLeadListStatus: Status.failure,
        ));
        return [];
    }
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

  Future<List<Building>> getBuildings(
      {String? search, String? communityId}) async {
    if (state.buildingList.isNotEmpty) {
      return state.buildingList
          .where((element) =>
              communityId != null || communityId?.isNotEmpty == true
                  ? element.communityId == communityId
                  : true)
          .toList();
    }
    emit(state.copyWith(getBuildingListStatus: Status.loadingMore));
    final result = await _listingsRepo.getBuildingNames(
        search: search, communityId: communityId);
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

  void _scrollToTop() {
    _scrollController?.jumpTo(0);
  }
}
