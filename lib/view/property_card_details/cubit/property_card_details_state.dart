part of 'property_card_details_cubit.dart';

@freezed
class PropertyCardDetailsState with _$PropertyCardDetailsState {
  const factory PropertyCardDetailsState({
    required String propertyCardId,
    @Default([]) List<LeadPropertyCardModel> propertyCardLeads,
    @Default(AppStatus.init) AppStatus getPropertyCardLeadsStatus,
    String? getPropertyCardLeadsError,
    @Default([]) List<PropertyCardLog> propertyCardLogs,
    @Default(AppStatus.init) AppStatus getPropertyCardLogsStatus,
    String? getPropertyCardLogsError,
    @Default([]) List<PropertyCardNoteModel> propertyCardNotes,
    @Default(AppStatus.init) AppStatus getPropertyCardNotesStatus,
    String? getPropertyCardNotesError,
    PropertyCardDetailsModel? propertyCard,
    @Default(AppStatus.init) AppStatus getPropertyCardStatus,
    String? getPropertyCardError,
    @Default(AppStatus.init) AppStatus addPropertyCardNoteStatus,
    String? addPropertyCardNoteError,
    @Default(AppStatus.init) AppStatus updatePropertyCardStatus,
    String? updatePropertyCardError,
    @Default(AppStatus.init) AppStatus checkInStatus,
    String? checkInError,
    @Default(AppStatus.init) AppStatus checkOutLeadStatus,
    String? checkOutLeadError,
    @Default(AppStatus.init) AppStatus convertToListingAquiredStatus,
    String? convertToListingAquiredError,
  }) = _PropertyCardDetailsState;
}
