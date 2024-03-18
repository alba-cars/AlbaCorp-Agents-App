import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../util/status.dart';

part 'add_task_state.dart';
part 'add_task_cubit.freezed.dart';

@injectable
class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(this._activityRepo, this._listingsRepo) : super(AddTaskState());

  final ActivityRepo _activityRepo;
  final ListingsRepo _listingsRepo;

  Future<void> addActivity({
    required BuildContext context,
    required String leadId,
    required String type,
    DateTime? date,
    String? propertyId,
    String? description,
  }) async {
    final result = await _activityRepo.createActivity(
        leadId: leadId,
        type: type,
        date: date,
        description: description,
        propertyId: propertyId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addLeadStatus: Status.success));
        if (context.mounted) {
          context.pop(true);
        }
      case (Error e):
        emit(state.copyWith(
            addLeadError: e.exception, addLeadStatus: Status.failure));
    }
  }

  Future<List<Property>> getListings({String? search}) async {
    final result = await _listingsRepo.getListings(
      search: search,
    );
    switch (result) {
      case (Success s):
        return s.value;

      case (Error e):
        return [];
    }
  }
}
