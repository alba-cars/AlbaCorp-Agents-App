import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/remote_data/lead_data.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/enquiries_screen/widget/leadsource_filter_widget.dart';

part 'lead_source_cubit.freezed.dart';
part 'lead_source_state.dart';

@injectable
class LeadSourceCubit extends Cubit<LeadSourceState> {
  final LeadRepo leadData;
  LeadSourceCubit({required this.leadData})
      : super(LeadSourceState(status: AppStatus.initial));

  getLeadSources(
      {LeadSourceType leadSourceType = LeadSourceType.All,
      String? search,
      Paginator? paginator}) async {
    emit(state.copyWith(status: AppStatus.loading));
    final result = await leadData.getLeadSourcesRefactored(
        leadSourceType: leadSourceType, search: search, paginator: paginator);

    switch (result) {
      case (Success success):
        _handleSucccess(success);
      case (Error error):
        _handleError(error);
    }
  }

  void _handleSucccess(Success success) {
    emit(state.copyWith(
        status: AppStatus.success,
        leadSources: (success.value as List<LeadSource>)));
  }

  void _handleError(Error error) {
    emit(state.copyWith(status: AppStatus.failure, error: error.exception));
  }
}
