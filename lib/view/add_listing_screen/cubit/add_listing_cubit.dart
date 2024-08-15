import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/amenity_model.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/deal_response.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/listing_request_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/community_model.dart';
import '../../../model/property_type_model.dart';
import '../../../util/result.dart';

part 'add_listing_state.dart';
part 'add_listing_cubit.freezed.dart';

@injectable
class AddListingCubit extends Cubit<AddListingState> {
  AddListingCubit(this._leadRepo, this._listingsRepo, this._dealsRepo,
      @factoryParam bool _isEdit, @factoryParam Deal? _deal)
      : isEdit = _isEdit,
        deal = _deal,
        super(AddListingState()) {
    if (isEdit && deal != null) {
      _applyInitialValues();
    }
    getPropertyTypes();
    getAmenities();
  }
  final Deal? deal;
  final bool isEdit;
  final LeadRepo _leadRepo;
  final ListingsRepo _listingsRepo;
  final DealsRepo _dealsRepo;
  ScrollController? _scrollController;

  void setScrollController(ScrollController scrollController) {
    _scrollController = scrollController;
  }

  void _applyInitialValues() {
    emit(state.copyWith(initialValues: deal?.toListing()));
  }

  Future<void> addListing({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addListingStatus: AppStatus.loading));
    final val = Map.from(values)..removeWhere((key, value) => value == null);
    final result = await _listingsRepo
        .addListingAcquired(values: {'multiple': false, ...val});
    switch (result) {
      case (Success<NewListingRequest> s):
        final deal = await _dealsRepo.addDeal(values: {
          "assignedAgent": getIt<AuthBloc>().state.agent?.id,
          "category": "Listing Acquired",
          "type": "Listing",
          "new_listing_request_id": s.value.id,
          "agreedSalePrice": s.value.price,
          // "agreedCommission": values['agreedCommission'],
          'user_id': s.value.userId
        });
        switch (deal) {
          case (Success dealResult):
            emit(state.copyWith(
                addListingStatus: AppStatus.success,
                dealResponse: dealResult.value));
            break;
          case (Error e):
            emit(state.copyWith(
                addListingStatus: AppStatus.failure,
                addListingError: e.exception));
            break;
        }

      case (Error e):
        emit(state.copyWith(
            addListingStatus: AppStatus.failure, addListingError: e.exception));
        break;
    }
  }

  Future<void> editListing({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addListingStatus: AppStatus.loading));
    final val = Map.from(values)..removeWhere((key, value) => value == null);
    final result = await _listingsRepo.updateListingAcquired(
        id: deal!.newListingRequest!.id, values: {'multiple': false, ...val});
    switch (result) {
      case (Success<NewListingRequest> s):
        final updatedDeal = await _dealsRepo.updateDeal(id: deal!.id, values: {
          "assignedAgent": getIt<AuthBloc>().state.agent?.id,
          "category": "Listing Acquired",
          "type": "Listing",
          "agreedSalePrice": s.value.price,
          "agreedCommission": values['agreedCommission'],
          'user_id': s.value.userId
        });
        switch (updatedDeal) {
          case (Success<DealResponse> dealResult):
            emit(state.copyWith(
                addListingStatus: AppStatus.success,
                dealResponse: dealResult.value));
            break;
          case (Error e):
            emit(state.copyWith(
                addListingStatus: AppStatus.failure,
                addListingError: e.exception));
            break;
        }

      case (Error e):
        emit(state.copyWith(
            addListingStatus: AppStatus.failure, addListingError: e.exception));
        break;
    }
  }

  Future<void> addListingDocuments(
      {required Map<String, dynamic> values}) async {
    Logger().d(values);
    emit(state.copyWith(addListingDocumentsStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.addDealDocuments(
        userId: state.dealResponse!.client!.id,
        dealId: state.dealResponse!.id,
        values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addListingDocumentsStatus: AppStatus.success));

        break;
      case (Error e):
        emit(state.copyWith(
            addListingDocumentsStatus: AppStatus.failure,
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
          final val = formKey.currentState!.value;

          isEdit
              ? await editListing(values: val)
              : await addListing(values: val);
          if (state.addListingStatus == AppStatus.success) {
            if (!isEdit) {
              emit(state.copyWith(currentTab: 1));
              tabController.animateTo(1);
              _scrollToTop();
            } else {
              showSnackbar(
                  context, "Successfully updated deal", SnackBarType.success);
              context.pop();
            }
          } else if (state.addListingStatus == AppStatus.failure) {
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
          if (state.addListingDocumentsStatus == AppStatus.success) {
            if (context.mounted) {
              showSnackbar(
                  context, 'Listing Added Successfully', SnackBarType.success);
              context.pop();
            }
          } else if (state.addListingDocumentsStatus == AppStatus.failure) {
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
    emit(state.copyWith(getLeadListStatus: AppStatus.loadingMore));
    final result = await _leadRepo.getLeads(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadList: s.value, getLeadListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getLeadListStatus: AppStatus.failure,
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

  void _scrollToTop() {
    _scrollController?.jumpTo(0);
  }
}
