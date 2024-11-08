import 'package:bloc/bloc.dart';
import 'package:country_state_city/country_state_city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/lead_source_model.dart';

import '../../../model/lead_model.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'add_lead_state.dart';
part 'add_lead_cubit.freezed.dart';

@injectable
class AddLeadCubit extends Cubit<AddLeadState> {
  AddLeadCubit(this._leadRepo, @factoryParam Map<String, dynamic>? data)
      : super(AddLeadState(
            val: data ?? {},
            step2Values: data ?? {},
            step1Values: data?['lead_source'] != null
                ? {
                    'lead_source':
                        LeadSource(name: data?['lead_source'], id: "", key: "")
                  }
                : null)) {
    getLeadSources();
  }

  final LeadRepo _leadRepo;

  Future<void> addLead() async {
    emit(state.copyWith(addLeadStatus: AppStatus.loadingMore));
    Logger().d("Reached form submission");
    Map<String, dynamic> data = {...state.val};
    String name = data["name"];
    String firstName = name.split(" ").first;
    String lastName = "";
    if (name.split(" ").length > 1) {
      lastName = name.split(" ").sublist(1).join(" ");
    }
    Logger().d("First name $firstName and last name is $lastName");
    data["first_name"] = firstName;
    data["last_name"] = lastName;

    Logger().d(data);
    final result = await _leadRepo.addLead(lead: {'role': "User", ...data});
    switch (result) {
      case (Success s):
        emit(state.copyWith(lead: s.value, addLeadStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            addLeadStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<void> onNextPressed({required Map<String, dynamic> values}) async {
    final Map<String, dynamic> val = Map.from(state.val)..addAll(values);
    emit(state.copyWith(val: val));
    if (state.currentTab != 1) {
      emit(state.copyWith(
        currentTab: state.currentTab + 1,
        previousTab: state.currentTab,
      ));
    } else {
      await addLead();
    }
  }

  Future<void> setFormValues({required Map<String, dynamic> values}) async {
    emit(state.copyWith(
      step1Values: state.currentTab == 0 ? values : state.step1Values,
      step2Values: state.currentTab == 1 ? values : state.step2Values,
      // step3Values: state.currentTab == 2 ? values : state.step3Values,
    ));
  }

  Future<void> onBackPressed() async {
    if (state.currentTab != 0) {
      emit(state.copyWith(
          currentTab: state.currentTab - 1, previousTab: state.currentTab));
    } else {
      // await addLead();
    }
  }

  Future<void> getLeadSources() async {
    emit(state.copyWith(getLeadSourceStatus: AppStatus.loadingMore));
    final result = await _leadRepo.getLeadSources();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadSources: s.value, getLeadSourceStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadSourceStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<List<Country>> getCountries(String search) async {
    final result = await getAllCountries();
    final list = result
        .where((element) =>
            element.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    return list;
  }

  Future<void> setSelectedCountry(Country country) async {
    emit(state.copyWith(selectedCountry: country, states: []));
    getState(country.name);
  }

  Future<List<State>> getState(String search) async {
    if (state.selectedCountry == null) {
      return [];
    }

    final result = await getStatesOfCountry(state.selectedCountry!.isoCode);

    final list = result
        .where((element) =>
            element.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    return list;
  }
}
