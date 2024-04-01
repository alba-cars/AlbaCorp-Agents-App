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
    @Default([]) List<PropertyCardNoteModel> propertyCardNotes,
    @Default(Status.init) Status getPropertyCardNotesStatus,
    String? getPropertyCardNotesError,
    PropertyCardDetailsModel? propertyCard,
    @Default(Status.init) Status getPropertyCardStatus,
    String? getPropertyCardError,
    @Default(Status.init) Status addPropertyCardNoteStatus,
    String? addPropertyCardNoteError,
    @Default(Status.init) Status updatePropertyCardStatus,
    String? updatePropertyCardError,
    @Default(Status.init) Status checkInStatus,
    String? checkInError,
    @Default(Status.init) Status checkOutLeadStatus,
    String? checkOutLeadError,
  }) = _PropertyCardDetailsState;
}
