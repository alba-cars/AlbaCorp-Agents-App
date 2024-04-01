import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/model/property_card_note_model.dart';
import 'package:real_estate_app/model/user.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../model/lead_property_card_model.dart';
import '../../../model/property_card_details_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/result.dart';
import '../../../widgets/snackbar.dart';

part 'property_card_details_state.dart';
part 'property_card_details_cubit.freezed.dart';

@injectable
class PropertyCardDetailsCubit extends Cubit<PropertyCardDetailsState> {
  PropertyCardDetailsCubit(
      @factoryParam String propertyCardId, this._explorerRepo)
      : super(PropertyCardDetailsState(propertyCardId: propertyCardId)) {
    Future.wait([
      getPropertyCard(),
      getPropertyCardLeads(),
      getPropertyCardLogs(),
      getPropertyCardNotes()
    ]);
  }

  final ExplorerRepo _explorerRepo;

  Future<void> getPropertyCard() async {
    emit(state.copyWith(getPropertyCardStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCard(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCard: s.value, getPropertyCardStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardStatus: Status.failure,
            getPropertyCardError: e.exception));
    }
  }

  Future<void> getPropertyCardLeads() async {
    emit(state.copyWith(getPropertyCardLeadsStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCardLeads(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLeads: s.value,
            getPropertyCardLeadsStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLeadsStatus: Status.failure,
            getPropertyCardLeadsError: e.exception));
    }
  }

  Future<void> getPropertyCardLogs() async {
    emit(state.copyWith(getPropertyCardLogsStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCardLogs(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLogs: s.value,
            getPropertyCardLogsStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLogsStatus: Status.failure,
            getPropertyCardLogsError: e.exception));
    }
  }

  Future<void> getPropertyCardNotes() async {
    emit(state.copyWith(getPropertyCardNotesStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCardNotes(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardNotes: s.value,
            getPropertyCardNotesStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardNotesStatus: Status.failure,
            getPropertyCardNotesError: e.exception));
    }
  }

  Future<void> addPropertyCardNotes(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(addPropertyCardNoteStatus: Status.loading));
    final result = await _explorerRepo.addPropertyCardNotes(
        propertyCardId: state.propertyCardId, values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addPropertyCardNoteStatus: Status.success));
        getPropertyCardNotes();
        showSnackbar(context, 'Note added successfully', SnackBarType.success);
        Navigator.of(context).pop();
        break;
      case (Error e):
        emit(state.copyWith(
            addPropertyCardNoteStatus: Status.failure,
            addPropertyCardNoteError: e.exception));
        showSnackbar(context, e.exception, SnackBarType.failure);
    }
  }

  Future<void> verifyLeadAsOwner(
      {required LeadPropertyCardModel leadCard, required int index}) async {
    emit(state.copyWith(updatePropertyCardStatus: Status.loading));
    final result = await _explorerRepo.updatePropertyCard(
        propertyCardId: state.propertyCardId,
        values: {'currentOwner': leadCard.lead.id, 'status': 'Verified'});
    switch (result) {
      case (Success s):
        final card = state.propertyCard?.copyWith(
          currentOwner: User(
              id: leadCard.lead.id,
              email: leadCard.lead.email,
              firstName: leadCard.lead.firstName,
              lastName: leadCard.lead.lastName,
              phone: leadCard.lead.phone ?? ''),
        );
        final leadCards =
            List<LeadPropertyCardModel>.from(state.propertyCardLeads);
        leadCards.remove(leadCard);
        leadCards.insert(index, leadCard.copyWith(wasOwner: false));
        emit(state.copyWith(
            propertyCard: card,
            propertyCardLeads: leadCards,
            updatePropertyCardStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: Status.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> markLeadAsPastOwner(
      {required LeadPropertyCardModel leadCard, required int index}) async {
    emit(state.copyWith(updatePropertyCardStatus: Status.loading));
    final result = await _explorerRepo.setPastOwner(
        propertyCardId: state.propertyCardId, leadId: leadCard.lead.id);
    switch (result) {
      case (Success s):
        final card = state.propertyCard?.copyWith(currentOwner: null);
        final leadCards =
            List<LeadPropertyCardModel>.from(state.propertyCardLeads);
        leadCards.remove(leadCard);
        leadCards.insert(index, leadCard.copyWith(wasOwner: true));

        emit(state.copyWith(
            updatePropertyCardStatus: Status.success,
            propertyCard: card,
            propertyCardLeads: leadCards));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: Status.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> unLinkLeadFromPropertyCard({required String leadCardId}) async {
    emit(state.copyWith(updatePropertyCardStatus: Status.loading));
    final result =
        await _explorerRepo.unLinkPropertyFromLead(leadCardId: leadCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updatePropertyCardStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: Status.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> updatePropertyCard(
      {required Map<String, dynamic> values}) async {
    emit(state.copyWith(updatePropertyCardStatus: Status.loading));
    final result = await _explorerRepo.updatePropertyCard(
        propertyCardId: state.propertyCardId, values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updatePropertyCardStatus: Status.success));
        getPropertyCard();
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: Status.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> checkInLead({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkInStatus: Status.loading));
    final result = await _explorerRepo
        .checkInLead(propertyCardIds: [state.propertyCardId]);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          checkInStatus: Status.success,
        ));
        getPropertyCard();
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());

        break;
      case (Error e):
        emit(state.copyWith(
            checkInStatus: Status.failure, checkInError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLead({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkOutLeadStatus: Status.loading));
    final result = await _explorerRepo
        .checkOutLead(propertyCardIds: [state.propertyCardId]);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          checkOutLeadStatus: Status.success,
        ));
        getPropertyCard();
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        break;
      case (Error e):
        emit(state.copyWith(
            checkOutLeadStatus: Status.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }
}
