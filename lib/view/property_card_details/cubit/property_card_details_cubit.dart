import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
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
    emit(state.copyWith(getPropertyCardStatus: AppStatus.loading));
    final result = await _explorerRepo.getPropertyCard(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCard: s.value, getPropertyCardStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardStatus: AppStatus.failure,
            getPropertyCardError: e.exception));
    }
  }

  Future<void> getPropertyCardLeads() async {
    emit(state.copyWith(getPropertyCardLeadsStatus: AppStatus.loading));
    final result = await _explorerRepo.getPropertyCardLeads(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLeads: s.value,
            getPropertyCardLeadsStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLeadsStatus: AppStatus.failure,
            getPropertyCardLeadsError: e.exception));
    }
  }

  Future<void> getPropertyCardLogs() async {
    emit(state.copyWith(getPropertyCardLogsStatus: AppStatus.loading));
    final result = await _explorerRepo.getPropertyCardLogs(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLogs: s.value,
            getPropertyCardLogsStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLogsStatus: AppStatus.failure,
            getPropertyCardLogsError: e.exception));
    }
  }

  Future<void> getPropertyCardNotes() async {
    emit(state.copyWith(getPropertyCardNotesStatus: AppStatus.loading));
    final result = await _explorerRepo.getPropertyCardNotes(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardNotes: s.value,
            getPropertyCardNotesStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardNotesStatus: AppStatus.failure,
            getPropertyCardNotesError: e.exception));
    }
  }

  Future<void> addPropertyCardNotes(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(addPropertyCardNoteStatus: AppStatus.loading));
    final result = await _explorerRepo.addPropertyCardNotes(
        propertyCardId: state.propertyCardId, values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addPropertyCardNoteStatus: AppStatus.success));
        getPropertyCardNotes();
        showSnackbar(context, 'Note added successfully', SnackBarType.success);
        Navigator.of(context).pop();
        break;
      case (Error e):
        emit(state.copyWith(
            addPropertyCardNoteStatus: AppStatus.failure,
            addPropertyCardNoteError: e.exception));
        showSnackbar(context, e.exception, SnackBarType.failure);
    }
  }

  Future<void> verifyLeadAsOwner(
      {required LeadPropertyCardModel leadCard, required int index}) async {
    emit(state.copyWith(updatePropertyCardStatus: AppStatus.loading));
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
            updatePropertyCardStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: AppStatus.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> markLeadAsPastOwner(
      {required LeadPropertyCardModel leadCard, required int index}) async {
    emit(state.copyWith(updatePropertyCardStatus: AppStatus.loading));
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
            updatePropertyCardStatus: AppStatus.success,
            propertyCard: card,
            propertyCardLeads: leadCards));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: AppStatus.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> unLinkLeadFromPropertyCard({required String leadCardId}) async {
    emit(state.copyWith(updatePropertyCardStatus: AppStatus.loading));
    final result =
        await _explorerRepo.unLinkPropertyFromLead(leadCardId: leadCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updatePropertyCardStatus: AppStatus.success));
        getPropertyCardLeads();
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: AppStatus.failure,
            updatePropertyCardError: e.exception));
    }
  }

  Future<void> updatePropertyCard(
      {required Map<String, dynamic> values}) async {
    if (values['status'] == 'Listing Acquired') {
      emit(state.copyWith(convertToListingAquiredStatus: AppStatus.loading));
      final Map<String, dynamic> val = Map.from(values)..remove('status');
      final client = state.propertyCardLeads.firstWhereOrNull((v)=>v.lead.id == state.propertyCard?.currentOwner?.id);
      if(client == null){
        emit(state.copyWith(
              convertToListingAquiredStatus: AppStatus.failure,
              convertToListingAquiredError: "No client is verified"));
        return;
      }
      val.addAll({'agentId':getIt<AuthBloc>().state.agent?.id,'clientId':client.lead.id});
      final result = await _explorerRepo.convertPropertyCardToListing(
          propertyCardId: state.propertyCardId, values: val);
      switch (result) {
        case (Success s):
          emit(
              state.copyWith(convertToListingAquiredStatus: AppStatus.success));

          break;
        case (Error e):
          emit(state.copyWith(
              convertToListingAquiredStatus: AppStatus.failure,
              convertToListingAquiredError: e.exception));
      }
    } else {
      emit(state.copyWith(updatePropertyCardStatus: AppStatus.loading));
      final result = await _explorerRepo.updatePropertyCard(
          propertyCardId: state.propertyCardId, values: values);
      switch (result) {
        case (Success s):
          emit(state.copyWith(updatePropertyCardStatus: AppStatus.success));
          getPropertyCard();
          break;
        case (Error e):
          emit(state.copyWith(
              updatePropertyCardStatus: AppStatus.failure,
              updatePropertyCardError: e.exception));
      }
    }
  }

  Future<void> checkInLead({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkInStatus: AppStatus.loading));
    final result = await _explorerRepo
        .checkInLead(propertyCardIds: [state.propertyCardId]);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          checkInStatus: AppStatus.success,
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
            checkInStatus: AppStatus.failure, checkInError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLead({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkOutLeadStatus: AppStatus.loading));
    final result = await _explorerRepo
        .checkOutLead(propertyCardIds: [state.propertyCardId]);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          checkOutLeadStatus: AppStatus.success,
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
            checkOutLeadStatus: AppStatus.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }
}
