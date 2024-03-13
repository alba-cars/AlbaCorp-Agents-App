part of 'property_card_details_cubit.dart';

@freezed
class PropertyCardDetailsState with _$PropertyCardDetailsState {
  const factory PropertyCardDetailsState({
    required String propertyCardId,
    @Default([]) List<LeadPropertyCardModel> propertyCardLeads,
    @Default(Status.init) Status getPropertyCardLeadsStatus,
    String? getPropertyCardLeadsError,
    @Default([]) List<PropertyCardLog> propertyCardLogs,
    @Default(Status.init) Status getPropertyCardLogsStatus,
    String? getPropertyCardLogsError,
    PropertyCardDetailsModel? propertyCard,
    @Default(Status.init) Status getPropertyCardStatus,
    String? getPropertyCardError,
  }) = _PropertyCardDetailsState;
}
