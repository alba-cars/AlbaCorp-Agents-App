part of 'add_deal_cubit.dart';

enum DealType { primaryOffPlan, SecondaryMarket }

enum ClientSource { alba, external }

enum DealPurpose { rent, sale }

enum PageType { selection, fields }

@freezed
class AddDealState with _$AddDealState {
  const factory AddDealState({
    DealResponse? dealResponse,
    @Default(Status.init) Status addDealStatus,
    String? addDealError,
    @Default(Status.init) Status addDealDocumentsStatus,
    String? addDealDocumentsError,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(Status.init) Status getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(Status.init) Status getBuildingListStatus,
    @Default([]) List<Lead> leadList,
    @Default(Status.init) Status getLeadListStatus,
    @Default([]) List<OffPlanModel> offPlansList,
    @Default(Status.init) Status getPffPlansListStatus,
    @Default([]) List<Agent> agentList,
    @Default(Status.init) Status getAgentsListStatus,
    @Default([]) List<Property> agentPropertyList,
    @Default(Status.init) Status getAgentPropertyListStatus,
    @Default([]) List<Agency> agencyList,
    @Default(Status.init) Status getAgencyListStatus,
    Lead? propertyOwner,
    @Default(Status.init) Status getPropertyOwnerStatus,
    @Default(0) int currentTab,
    DealType? selectedDealType,
    ClientSource? sellerSource,
    ClientSource? buyerSource,
    DealPurpose? dealPurpose,
    @Default(PageType.selection) PageType pageType,
    Property? selectedProperty,
    String? selectedPropertyOwnerId,
  }) = _AddDealState;
}

extension DealTypeExtension on DealType {
  String toJson() {
    switch (this) {
      case DealType.primaryOffPlan:
        return 'Primary Off Plan Property';

      case DealType.SecondaryMarket:
        return 'Secondary Market Property';
    }
  }
}

extension PurposeTypeExtension on DealPurpose {
  String toJson() {
    switch (this) {
      case DealPurpose.rent:
        return 'For Rent';

      case DealPurpose.sale:
        return 'For Sale';
    }
  }
}

extension ClientSourceExtension on ClientSource {
  String toJson() {
    switch (this) {
      case ClientSource.alba:
        return 'Alba';

      case ClientSource.external:
        return 'External';
    }
  }
}
