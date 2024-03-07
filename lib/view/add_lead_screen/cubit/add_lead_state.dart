part of 'add_lead_cubit.dart';

@freezed
class AddLeadState with _$AddLeadState {
  const factory AddLeadState({
    @Default(Status.init) Status addLeadStatus,
    String? addLeadError,
    @Default([]) List<LeadSource> leadSources,
    @Default(Status.init) Status getLeadSourceStatus,
    @Default([]) List<Country> countries,
    Country? selectedCountry,
    @Default([]) List<State> states,
    Map<String, dynamic>? step1Values,
    Map<String, dynamic>? step2Values,
    Map<String, dynamic>? step3Values,
    @Default({}) Map<String, dynamic> val,
    @Default(0) int currentTab,
    @Default(0) int previousTab,
    Lead? lead,
  }) = _AddLeadState;
}
