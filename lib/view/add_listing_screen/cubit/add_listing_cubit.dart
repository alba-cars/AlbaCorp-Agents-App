import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/listing_request_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/community_model.dart';
import '../../../model/property_type_model.dart';
import '../../../util/result.dart';

part 'add_listing_state.dart';
part 'add_listing_cubit.freezed.dart';

@injectable
class AddListingCubit extends Cubit<AddListingState> {
  AddListingCubit(this._leadRepo, this._listingsRepo, this._dealsRepo)
      : super(AddListingState()) {
    getPropertyTypes();
  }

  final LeadRepo _leadRepo;
  final ListingsRepo _listingsRepo;
  final DealsRepo _dealsRepo;
  ScrollController? _scrollController;

  void setScrollController(ScrollController scrollController) {
    _scrollController = scrollController;
  }

  Future<void> addListing({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addListingStatus: Status.loading));
    final result = await _listingsRepo
        .addListingAcquired(values: {'multiple': false, ...values});
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            addListingStatus: Status.success, dealListingResponse: s.value));
        break;
      case (Error e):
        emit(state.copyWith(
            addListingStatus: Status.failure, addListingError: e.exception));
        break;
    }
  }

  Future<void> addListingDocuments(
      {required Map<String, dynamic> values}) async {
    emit(state.copyWith(addListingDocumentsStatus: Status.loadingMore));
    final result = await _dealsRepo.addDealDocuments(
        dealId: state.dealListingResponse!.id ?? '', values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addListingDocumentsStatus: Status.success));

        break;
      case (Error e):
        emit(state.copyWith(
            addListingDocumentsStatus: Status.failure,
            addListingDocumentsError: e.exception));
        break;
    }
  }

  Future<void> onNextPressed(BuildContext context,
      {required TabController tabController,
      required GlobalKey<FormBuilderState> formKey}) async {
    switch (state.currentTab) {
      case 0:
        final validated = formKey.currentState?.saveAndValidate();
        if (validated == true) {
          final val = formKey.currentState?.value;
          if (val != null) await addListing(values: val);
          if (state.addListingStatus == Status.success) {
            emit(state.copyWith(currentTab: 1));
            tabController.animateTo(1);
            _scrollToTop();
          } else if (state.addListingStatus == Status.failure) {
            if (context.mounted) {
              showSnackbar(
                  context,
                  state.addListingError ?? 'Something failed try again',
                  SnackBarType.failure);
            }
          }
        }
        return;
      case 1:
        final validated = formKey.currentState?.saveAndValidate();
        if (validated == true) {
          final val = formKey.currentState?.value;
          await addListingDocuments(values: val!);
          if (state.addListingDocumentsStatus == Status.success) {
            if (context.mounted) {
              showSnackbar(
                  context, 'Listing Added Successfully', SnackBarType.success);
              context.pop();
            }
          } else if (state.addListingDocumentsStatus == Status.failure) {
            if (context.mounted) {
              showSnackbar(
                  context,
                  state.addListingError ?? 'Something failed try again',
                  SnackBarType.failure);
            }
          }
        }
        return;
      case 2:
        // await addListing(values: values);
        emit(state.copyWith(currentTab: 3));
        tabController.animateTo(3);
        _scrollToTop();
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

  void _scrollToTop() {
    _scrollController?.jumpTo(0);
  }
}
