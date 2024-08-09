import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';

part 'enquiries_state.freezed.dart';

@freezed
class EnquiriesState with _$EnquiriesState {
  const factory EnquiriesState.initial() = EnquiriesStateInitial;
  const factory EnquiriesState.loading() = EnquiriesStateLoading;
  const factory EnquiriesState.loadingMore() = _EnquiriesStateLoadingMore;
  const factory EnquiriesState.loaded({
    required List<Activity> activities,
    Paginator? paginator,
  }) = _EnquiriesStateLoaded;

  const factory EnquiriesState.error({required String errorMessage}) =
      _EnquiriesStateError;
}
