// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_lead_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddLeadState {
  AppStatus get addLeadStatus;
  String? get addLeadError;
  List<LeadSource> get leadSources;
  AppStatus get getLeadSourceStatus;
  List<Country> get countries;
  Country? get selectedCountry;
  List<State> get states;
  Map<String, dynamic>? get step1Values;
  Map<String, dynamic>? get step2Values;
  Map<String, dynamic>? get step3Values;
  Map<String, dynamic> get val;
  int get currentTab;
  int get previousTab;
  Lead? get lead;

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddLeadStateCopyWith<AddLeadState> get copyWith =>
      _$AddLeadStateCopyWithImpl<AddLeadState>(
          this as AddLeadState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddLeadState &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError) &&
            const DeepCollectionEquality()
                .equals(other.leadSources, leadSources) &&
            (identical(other.getLeadSourceStatus, getLeadSourceStatus) ||
                other.getLeadSourceStatus == getLeadSourceStatus) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            const DeepCollectionEquality().equals(other.states, states) &&
            const DeepCollectionEquality()
                .equals(other.step1Values, step1Values) &&
            const DeepCollectionEquality()
                .equals(other.step2Values, step2Values) &&
            const DeepCollectionEquality()
                .equals(other.step3Values, step3Values) &&
            const DeepCollectionEquality().equals(other.val, val) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.previousTab, previousTab) ||
                other.previousTab == previousTab) &&
            (identical(other.lead, lead) || other.lead == lead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addLeadStatus,
      addLeadError,
      const DeepCollectionEquality().hash(leadSources),
      getLeadSourceStatus,
      const DeepCollectionEquality().hash(countries),
      selectedCountry,
      const DeepCollectionEquality().hash(states),
      const DeepCollectionEquality().hash(step1Values),
      const DeepCollectionEquality().hash(step2Values),
      const DeepCollectionEquality().hash(step3Values),
      const DeepCollectionEquality().hash(val),
      currentTab,
      previousTab,
      lead);

  @override
  String toString() {
    return 'AddLeadState(addLeadStatus: $addLeadStatus, addLeadError: $addLeadError, leadSources: $leadSources, getLeadSourceStatus: $getLeadSourceStatus, countries: $countries, selectedCountry: $selectedCountry, states: $states, step1Values: $step1Values, step2Values: $step2Values, step3Values: $step3Values, val: $val, currentTab: $currentTab, previousTab: $previousTab, lead: $lead)';
  }
}

/// @nodoc
abstract mixin class $AddLeadStateCopyWith<$Res> {
  factory $AddLeadStateCopyWith(
          AddLeadState value, $Res Function(AddLeadState) _then) =
      _$AddLeadStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus addLeadStatus,
      String? addLeadError,
      List<LeadSource> leadSources,
      AppStatus getLeadSourceStatus,
      List<Country> countries,
      Country? selectedCountry,
      List<State> states,
      Map<String, dynamic>? step1Values,
      Map<String, dynamic>? step2Values,
      Map<String, dynamic>? step3Values,
      Map<String, dynamic> val,
      int currentTab,
      int previousTab,
      Lead? lead});

  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class _$AddLeadStateCopyWithImpl<$Res> implements $AddLeadStateCopyWith<$Res> {
  _$AddLeadStateCopyWithImpl(this._self, this._then);

  final AddLeadState _self;
  final $Res Function(AddLeadState) _then;

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
    Object? leadSources = null,
    Object? getLeadSourceStatus = null,
    Object? countries = null,
    Object? selectedCountry = freezed,
    Object? states = null,
    Object? step1Values = freezed,
    Object? step2Values = freezed,
    Object? step3Values = freezed,
    Object? val = null,
    Object? currentTab = null,
    Object? previousTab = null,
    Object? lead = freezed,
  }) {
    return _then(_self.copyWith(
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _self.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _self.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      countries: null == countries
          ? _self.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      selectedCountry: freezed == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      states: null == states
          ? _self.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<State>,
      step1Values: freezed == step1Values
          ? _self.step1Values
          : step1Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      step2Values: freezed == step2Values
          ? _self.step2Values
          : step2Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      step3Values: freezed == step3Values
          ? _self.step3Values
          : step3Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      val: null == val
          ? _self.val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      previousTab: null == previousTab
          ? _self.previousTab
          : previousTab // ignore: cast_nullable_to_non_nullable
              as int,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
    ));
  }

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

/// @nodoc

class _AddLeadState implements AddLeadState {
  const _AddLeadState(
      {this.addLeadStatus = AppStatus.init,
      this.addLeadError,
      final List<LeadSource> leadSources = const [],
      this.getLeadSourceStatus = AppStatus.init,
      final List<Country> countries = const [],
      this.selectedCountry,
      final List<State> states = const [],
      final Map<String, dynamic>? step1Values,
      final Map<String, dynamic>? step2Values,
      final Map<String, dynamic>? step3Values,
      final Map<String, dynamic> val = const {},
      this.currentTab = 0,
      this.previousTab = 0,
      this.lead})
      : _leadSources = leadSources,
        _countries = countries,
        _states = states,
        _step1Values = step1Values,
        _step2Values = step2Values,
        _step3Values = step3Values,
        _val = val;

  @override
  @JsonKey()
  final AppStatus addLeadStatus;
  @override
  final String? addLeadError;
  final List<LeadSource> _leadSources;
  @override
  @JsonKey()
  List<LeadSource> get leadSources {
    if (_leadSources is EqualUnmodifiableListView) return _leadSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leadSources);
  }

  @override
  @JsonKey()
  final AppStatus getLeadSourceStatus;
  final List<Country> _countries;
  @override
  @JsonKey()
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final Country? selectedCountry;
  final List<State> _states;
  @override
  @JsonKey()
  List<State> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  final Map<String, dynamic>? _step1Values;
  @override
  Map<String, dynamic>? get step1Values {
    final value = _step1Values;
    if (value == null) return null;
    if (_step1Values is EqualUnmodifiableMapView) return _step1Values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _step2Values;
  @override
  Map<String, dynamic>? get step2Values {
    final value = _step2Values;
    if (value == null) return null;
    if (_step2Values is EqualUnmodifiableMapView) return _step2Values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _step3Values;
  @override
  Map<String, dynamic>? get step3Values {
    final value = _step3Values;
    if (value == null) return null;
    if (_step3Values is EqualUnmodifiableMapView) return _step3Values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic> _val;
  @override
  @JsonKey()
  Map<String, dynamic> get val {
    if (_val is EqualUnmodifiableMapView) return _val;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_val);
  }

  @override
  @JsonKey()
  final int currentTab;
  @override
  @JsonKey()
  final int previousTab;
  @override
  final Lead? lead;

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddLeadStateCopyWith<_AddLeadState> get copyWith =>
      __$AddLeadStateCopyWithImpl<_AddLeadState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddLeadState &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError) &&
            const DeepCollectionEquality()
                .equals(other._leadSources, _leadSources) &&
            (identical(other.getLeadSourceStatus, getLeadSourceStatus) ||
                other.getLeadSourceStatus == getLeadSourceStatus) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality()
                .equals(other._step1Values, _step1Values) &&
            const DeepCollectionEquality()
                .equals(other._step2Values, _step2Values) &&
            const DeepCollectionEquality()
                .equals(other._step3Values, _step3Values) &&
            const DeepCollectionEquality().equals(other._val, _val) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.previousTab, previousTab) ||
                other.previousTab == previousTab) &&
            (identical(other.lead, lead) || other.lead == lead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addLeadStatus,
      addLeadError,
      const DeepCollectionEquality().hash(_leadSources),
      getLeadSourceStatus,
      const DeepCollectionEquality().hash(_countries),
      selectedCountry,
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(_step1Values),
      const DeepCollectionEquality().hash(_step2Values),
      const DeepCollectionEquality().hash(_step3Values),
      const DeepCollectionEquality().hash(_val),
      currentTab,
      previousTab,
      lead);

  @override
  String toString() {
    return 'AddLeadState(addLeadStatus: $addLeadStatus, addLeadError: $addLeadError, leadSources: $leadSources, getLeadSourceStatus: $getLeadSourceStatus, countries: $countries, selectedCountry: $selectedCountry, states: $states, step1Values: $step1Values, step2Values: $step2Values, step3Values: $step3Values, val: $val, currentTab: $currentTab, previousTab: $previousTab, lead: $lead)';
  }
}

/// @nodoc
abstract mixin class _$AddLeadStateCopyWith<$Res>
    implements $AddLeadStateCopyWith<$Res> {
  factory _$AddLeadStateCopyWith(
          _AddLeadState value, $Res Function(_AddLeadState) _then) =
      __$AddLeadStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus addLeadStatus,
      String? addLeadError,
      List<LeadSource> leadSources,
      AppStatus getLeadSourceStatus,
      List<Country> countries,
      Country? selectedCountry,
      List<State> states,
      Map<String, dynamic>? step1Values,
      Map<String, dynamic>? step2Values,
      Map<String, dynamic>? step3Values,
      Map<String, dynamic> val,
      int currentTab,
      int previousTab,
      Lead? lead});

  @override
  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class __$AddLeadStateCopyWithImpl<$Res>
    implements _$AddLeadStateCopyWith<$Res> {
  __$AddLeadStateCopyWithImpl(this._self, this._then);

  final _AddLeadState _self;
  final $Res Function(_AddLeadState) _then;

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
    Object? leadSources = null,
    Object? getLeadSourceStatus = null,
    Object? countries = null,
    Object? selectedCountry = freezed,
    Object? states = null,
    Object? step1Values = freezed,
    Object? step2Values = freezed,
    Object? step3Values = freezed,
    Object? val = null,
    Object? currentTab = null,
    Object? previousTab = null,
    Object? lead = freezed,
  }) {
    return _then(_AddLeadState(
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _self._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _self.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      countries: null == countries
          ? _self._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      selectedCountry: freezed == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      states: null == states
          ? _self._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<State>,
      step1Values: freezed == step1Values
          ? _self._step1Values
          : step1Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      step2Values: freezed == step2Values
          ? _self._step2Values
          : step2Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      step3Values: freezed == step3Values
          ? _self._step3Values
          : step3Values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      val: null == val
          ? _self._val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      previousTab: null == previousTab
          ? _self.previousTab
          : previousTab // ignore: cast_nullable_to_non_nullable
              as int,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
    ));
  }

  /// Create a copy of AddLeadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

// dart format on
