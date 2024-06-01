part of 'add_ticket_cubit.dart';

@freezed
class AddTicketState with _$AddTicketState {
  const factory AddTicketState({
    @Default(AppStatus.init) AppStatus addTicketStatus,
    String? addTicketError,
    @Default([]) List<Deal> deals,
    @Default(AppStatus.init) AppStatus getDealsStatus,
    @Default([]) List<Lead> leads,
    @Default(AppStatus.init) AppStatus getLeadsStatus,
    @Default([]) List<Property> properties,
    @Default(AppStatus.init) AppStatus getPropertiesStatus,
    @Default([]) List<Department> departments,
    @Default(AppStatus.init) AppStatus getDepartmentsStatus,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
  }) = _AddTicketState;
}
