import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/model/ticket_model.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/fields/attachment_field.dart';

import '../../../data/repository/ticket_repo.dart';
import '../../../util/result.dart';
import 'package:path/path.dart';

part 'ticket_details_state.dart';
part 'ticket_details_cubit.freezed.dart';

@injectable
class TicketDetailsCubit extends Cubit<TicketDetailsState> {
  TicketDetailsCubit(this._ticketRepo, @factoryParam String ticketId)
      : super(TicketDetailsState(ticketId: ticketId));
  final TicketRepo _ticketRepo;

  Future<void> getTicket({bool refresh = false}) async {
    emit(state.copyWith(getTicketStatus: Status.loadingMore));

    final result = await _ticketRepo.getTicket(state.ticketId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(ticket: s.value, getTicketStatus: Status.success));

        break;
      case (Error e):
        emit(state.copyWith(
            getTicketStatus: Status.failure, getTicketError: e.exception));
    }
  }

  FType getFileType(String path) {
    String fileExtension = extension(path).toLowerCase();
    FType fileType = FType.Other;
    switch (fileExtension) {
      case '.jpg':
      case '.jpeg':
        fileType = FType.JPG;
        break;
      case '.png':
        fileType = FType.PNG;
        break;
      case '.heic':
        fileType = FType.HEIC;
        break;
      case '.pdf':
        fileType = FType.PDF;
        break;
      case '.file':
        fileType = FType.File;
        break;
      case '.svg':
        fileType = FType.SVG;
        break;
      default:
        break;
    }
    return fileType;
  }
}
