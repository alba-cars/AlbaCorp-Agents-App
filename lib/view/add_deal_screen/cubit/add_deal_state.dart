part of 'add_deal_cubit.dart';

enum DealType { primaryOffPlan, SecondaryMarket }

enum ClientSource { alba, external }

enum DealPurpose { rent, sale }

enum PageType { selection, fields }

@freezed
class AddDealState with _$AddDealState {
  const factory AddDealState({
    DealResponse? dealResponse,
    @Default(AppStatus.init) AppStatus addDealStatus,
    String? addDealError,
    @Default(AppStatus.init) AppStatus addDealDocumentsStatus,
    String? addDealDocumentsError,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(AppStatus.init) AppStatus getBuildingListStatus,
    @Default([]) List<Lead> leadList,
    @Default(AppStatus.init) AppStatus getLeadListStatus,
    @Default([]) List<OffPlanModel> offPlansList,
    @Default(AppStatus.init) AppStatus getPffPlansListStatus,
    @Default([]) List<Agent> agentList,
    @Default(AppStatus.init) AppStatus getAgentsListStatus,
    @Default([]) List<Property> agentPropertyList,
    @Default(AppStatus.init) AppStatus getAgentPropertyListStatus,
    @Default([]) List<Agency> agencyList,
    @Default(AppStatus.init) AppStatus getAgencyListStatus,
    Lead? propertyOwner,
    @Default(AppStatus.init) AppStatus getPropertyOwnerStatus,
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
