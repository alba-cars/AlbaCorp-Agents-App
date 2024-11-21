import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/agency_model.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/deal_response.dart';
import 'package:real_estate_app/model/off_plan_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/building_model.dart';
import '../../../model/community_model.dart';
import '../../../model/lead_model.dart';
import '../../../model/property_type_model.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'add_deal_state.dart';
part 'add_deal_cubit.freezed.dart';

@injectable
class AddDealCubit extends Cubit<AddDealState> {
  AddDealCubit(this._listingsRepo, this._leadRepo, this._dealsRepo,
      this._agentRepo, @factoryParam Deal? deal)
      : super(AddDealState()) {
    getPropertyTypes();
    getAgents();
  }
  final ListingsRepo _listingsRepo;
  final LeadRepo _leadRepo;
  final DealsRepo _dealsRepo;
  final AgentRepo _agentRepo;
  ScrollController? _scrollController;

  void setScrollController(ScrollController scrollController) {
    _scrollController = scrollController;
  }

  void setSelectedDealType(DealType dealType) {
    emit(state.copyWith(selectedDealType: dealType));
  }

  void setSelectedDealPurpose(DealPurpose? dealPurpose) {
    emit(state.copyWith(dealPurpose: dealPurpose));
  }

  void setSelectedSellerSource(ClientSource? sellerSource) {
    ClientSource? buyerSource;
    if (sellerSource == ClientSource.external) {
      buyerSource = ClientSource.alba;
    }
    emit(state.copyWith(sellerSource: sellerSource, buyerSource: buyerSource));
  }

  void setSelectedBuyerSource(ClientSource? buyerSource) {
    emit(state.copyWith(buyerSource: buyerSource));
  }

  void setSelectedProperty(Property? property) {
    emit(state.copyWith(selectedProperty: property));
  }

  Future<void> addPrimaryDeal({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.addOffPlanListingDeal(values: values);
    switch (result) {
      case (Success<DealListingResponse> s):
        final dealResult = await _dealsRepo.addDeal(values: {
          'new_listing_offplan_id': s.value.id,
          'category': state.selectedDealType?.toJson(),
          'assignedAgent': getIt<AuthBloc>().state.agent?.id,
          'offplan_id': values['offPlanId'],
          'agreedSalePrice': values['agreedSalesPrice'],
          ...values
        });
        switch (dealResult) {
          case (Success s):
            emit(state.copyWith(
                dealResponse: s.value, addDealStatus: AppStatus.success));
            break;
          case (Error e):
            emit(state.copyWith(
                addDealStatus: AppStatus.failure, addDealError: e.exception));
            break;
        }
        break;
      case (Error e):
        emit(state.copyWith(
            addDealStatus: AppStatus.failure, addDealError: e.exception));
        break;
    }
  }

  Future<void> addSecondaryAlbaDeal(
      {required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealStatus: AppStatus.loadingMore));

    final dealResult = await _dealsRepo.addDeal(values: {
      ...values,
      'category': state.selectedDealType?.toJson(),
      'purpose': state.dealPurpose?.toJson(),
      'buyerClientType': state.buyerSource?.toJson(),
      'sellerClientType': state.sellerSource?.toJson(),
      'buyerAssignedAgent': getIt<AuthBloc>().state.agent?.id,
      
    });
    switch (dealResult) {
      case (Success s):
        emit(state.copyWith(
            dealResponse: s.value, addDealStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            addDealStatus: AppStatus.failure, addDealError: e.exception));
        break;
    }
  }

  Future<void> addSecondaryExternalDeal(
      {required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.addExternalListingDeal(values: values);
    switch (result) {
      case (Success<DealListingResponse> s):
        final dealResult = await _dealsRepo.addDeal(values: {
          ...values,
          'category': state.selectedDealType?.toJson(),
          'purpose': state.dealPurpose?.toJson(),
          'buyerClientType': state.buyerSource?.toJson(),
          'sellerClientType': state.sellerSource?.toJson(),
          'buyerAssignedAgent': getIt<AuthBloc>().state.agent?.id,
          'agreedSalePrice': s.value.agreedSalesPrice,
          'sellerAgreedComm': s.value.agreedCommission,
          'sellerExternalUserId': values['sellerExternalUserId'],
          'external_listing_property_id': s.value.id,
          
        });
        switch (dealResult) {
          case (Success s):
            emit(state.copyWith(
                dealResponse: s.value, addDealStatus: AppStatus.success));
            break;
          case (Error e):
            emit(state.copyWith(
                addDealStatus: AppStatus.failure, addDealError: e.exception));
            break;
        }
        break;
      case (Error e):
        emit(state.copyWith(
            addDealStatus: AppStatus.failure, addDealError: e.exception));
        break;
    }
  }

  Future<void> addDealDocuments({required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealDocumentsStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.addDealDocuments(
        userId: state.dealResponse!.client?.id,
        sellerUserId: state.dealResponse!.sellerInternalUser?.id,
        buyerUserId: state.dealResponse!.buyerInternalUser?.id,
        buyerAgencyId: state.dealResponse!.buyerExternalUser?.id,
        sellerAgencyId: state.dealResponse!.sellerExternalUser?.id,
        dealId: state.dealResponse!.id,
        values: values);
    switch (result) {
      case (Success s):
      await _dealsRepo.updateDealProgress(dealId: state.dealResponse!.id,);
        emit(state.copyWith(addDealDocumentsStatus: AppStatus.success));

        break;
      case (Error e):
        emit(state.copyWith(
            addDealDocumentsStatus: AppStatus.failure,
            addDealDocumentsError: e.exception));
        break;
    }
  }

  Future<String?> onNextPressed(BuildContext context,
      {required TabController tabController,
      GlobalKey<FormBuilderState>? formKey}) async {
    switch (state.currentTab) {
      case 0:
        if (state.selectedDealType == null) {
          return 'Select Deal Type to Continue';
        } else if (state.selectedDealType == DealType.SecondaryMarket) {
          if (state.dealPurpose == null) {
            return 'Select purpose to continue to next step';
          } else if (state.sellerSource == null) {
            return 'Select seller source to continue to next step';
          } else if (state.buyerSource == null) {
            return 'Select Buyer source to continue to next step';
          }
        }
        // if (val != null) await addListing(values: val);
        emit(state.copyWith(currentTab: 1));
        tabController.animateTo(1);
        _scrollToTop();

        return null;
      case 1:
        final validated = formKey?.currentState?.saveAndValidate();
        if (validated == true) {
          final val = formKey!.currentState!.value;
          if (state.selectedDealType == DealType.primaryOffPlan) {
            await addPrimaryDeal(values: val);
          } else {
            if (state.sellerSource == ClientSource.alba) {
              await addSecondaryAlbaDeal(values: val);
            } else {
              await addSecondaryExternalDeal(values: val);
            }
          }
          if (state.addDealStatus == AppStatus.success) {
            emit(state.copyWith(currentTab: 2));
            tabController.animateTo(2);
            _scrollToTop();
          }
        }
        return null;
      case 2:
        final validated = formKey?.currentState?.saveAndValidate();
        if (validated == true) {
          final val = formKey!.currentState!.value;
          await addDealDocuments(values: val);
          if (state.addDealDocumentsStatus == AppStatus.success) {
            // emit(state.copyWith(currentTab: 3));
            if (context.mounted) {
              showSnackbar(context, 'Documents Uploaded Successfully',
                  SnackBarType.success);
              context.pop();
            }
            // tabController.animateTo(3);
            // _scrollToTop();
          }
        }
      default:
        return null;
    }
  }

  Future<void> onPreviousPressed({required TabController tabController}) async {
    if (state.currentTab != 0) {
      emit(state.copyWith(currentTab: state.currentTab - 1));
      tabController.animateTo(state.currentTab);
    }
  }

  Future<List<Lead>> getLeads({String? search, String? agentId}) async {
    emit(state.copyWith(getLeadListStatus: AppStatus.loadingMore));
    final result = await _leadRepo.getLeads(search: search, agentId: agentId);
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

  Future<void> getAgents({String? search}) async {
    emit(state.copyWith(getAgentsListStatus: AppStatus.loadingMore));
    final result = await _agentRepo.getAgents();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            agentList: s.value, getAgentsListStatus: AppStatus.success));

      case (Error e):
        emit(state.copyWith(
          getAgentsListStatus: AppStatus.failure,
        ));
    }
  }

  Future<List<Agent>> getAgentsAutoComplete(String search) async {
    final agents = List<Agent>.from(state.agentList);
    return agents
        .where((element) =>
            element.user.firstName
                .toLowerCase()
                .contains(search.toLowerCase()) ||
            element.user.lastName.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }

  Future<List<Agency>> getAgencies({String? search}) async {
    emit(state.copyWith(getAgencyListStatus: AppStatus.loadingMore));
    final result = await _agentRepo.getAgencies();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            agencyList: s.value, getAgencyListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getAgencyListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<void> getAgentProperties({required String agentId}) async {
    emit(state.copyWith(
        getAgentPropertyListStatus: AppStatus.loadingMore,
        selectedPropertyOwnerId: null,
        propertyOwner: null));
    final result = await _agentRepo.getAgentProperties(agentId: agentId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            agentPropertyList: s.value,
            getAgentPropertyListStatus: AppStatus.success));

      case (Error e):
        emit(state.copyWith(
          getAgentPropertyListStatus: AppStatus.failure,
        ));
    }
  }

  Future<void> getPropertyOwner({required String ownerId}) async {
    emit(state.copyWith(
        getPropertyOwnerStatus: AppStatus.loadingMore,
        selectedPropertyOwnerId: null));
    final result = await _leadRepo.getPropertyOwner(ownerId: ownerId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyOwner: s.value, getPropertyOwnerStatus: AppStatus.success));

      case (Error e):
        emit(state.copyWith(
          getPropertyOwnerStatus: AppStatus.failure,
        ));
    }
  }

  Future<List<Community>> getCommunities({String? search}) async {
    if (state.communityList.isNotEmpty && search != null) {
      return state.communityList
          .where((element) =>
              element.community.toLowerCase().contains(search.toLowerCase()))
          .toList();
    }
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

  Future<List<OffPlanModel>> getOffPlans({String? search}) async {
    emit(state.copyWith(getPffPlansListStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.getOffPlanList(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            offPlansList: s.value, getPffPlansListStatus: AppStatus.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getPffPlansListStatus: AppStatus.failure,
        ));
        return [];
    }
  }

  Future<List<Building>> getBuildings(
      {String? search, required List<String>? communities}) async {
    emit(state.copyWith(getBuildingListStatus: AppStatus.loadingMore));

    final result = await _listingsRepo.getBuildingNames(
        search: search, communityId: communities);
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

  num? getPrice(Property property) {
    if (property.askingPrice != null) {
      return property.askingPrice!;
    } else if (property.oneCheqPrice != null) {
      return property.oneCheqPrice!;
    } else if (property.twoCheqPrice != null) {
      return property.twoCheqPrice!;
    } else if (property.fourCheqPrice != null) {
      return property.fourCheqPrice!;
    } else if (property.sixCheqPrice != null) {
      return property.sixCheqPrice!;
    } else if (property.twelveCheqPrice != null) {
      return property.twelveCheqPrice!;
    } else {
      return null;
    }
  }

  void _scrollToTop() {
    _scrollController?.jumpTo(0);
  }

  List<String> stepNames = [
    'Deal Type',
    'Deal Info',
    'Collect Documents',
  ];
}
