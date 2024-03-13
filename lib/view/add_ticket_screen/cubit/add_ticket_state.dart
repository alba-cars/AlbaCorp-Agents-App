part of 'add_ticket_cubit.dart';

@freezed
class AddTicketState with _$AddTicketState {
  const factory AddTicketState({
    @Default(Status.init) Status addTicketStatus,
    String? addTicketError,
    @Default([]) List<Deal> deals,
    @Default(Status.init) Status getDealsStatus,
    @Default([]) List<Lead> leads,
    @Default(Status.init) Status getLeadsStatus,
    @Default([]) List<Property> properties,
    @Default(Status.init) Status getPropertiesStatus,
    @Default([]) List<Department> departments,
    @Default(Status.init) Status getDepartmentsStatus,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(Status.init) Status getCommunityListStatus,
  }) = _AddTicketState;
}
