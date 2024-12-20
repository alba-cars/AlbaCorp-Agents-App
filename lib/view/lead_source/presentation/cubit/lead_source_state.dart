part of 'lead_source_cubit.dart';

@freezed
class LeadSourceState with _$LeadSourceState {
  const factory LeadSourceState(
      {@Default(AppStatus.init) AppStatus status,
      @Default([]) List<LeadSource>? leadSources,
      Paginator? paginator,
      String? error,
      String? search,
    }) = _LeadSourceState;
}
