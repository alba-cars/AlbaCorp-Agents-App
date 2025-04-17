// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../app/activity_cubit/activity_cubit.dart' as _i48;
import '../app/auth_bloc/auth_bloc.dart' as _i58;
import '../app/call_bloc/call_bloc.dart' as _i52;
import '../app/list_state_cubit/list_state_cubit.dart' as _i64;
import '../data/objectbox/repo_impl/notification_data.dart' as _i9;
import '../data/objectbox/repo_impl/pending_call_feedback_data.dart' as _i7;
import '../data/remote_data/activity_data.dart' as _i21;
import '../data/remote_data/agent_data.dart' as _i19;
import '../data/remote_data/attendance_data.dart' as _i40;
import '../data/remote_data/auth_data.dart' as _i13;
import '../data/remote_data/deals_data.dart' as _i29;
import '../data/remote_data/explorer_data.dart' as _i26;
import '../data/remote_data/finance_data.dart' as _i15;
import '../data/remote_data/lead_data.dart' as _i31;
import '../data/remote_data/linkus_data.dart' as _i33;
import '../data/remote_data/listings_data.dart' as _i17;
import '../data/remote_data/pending_call_feedback_repo.dart' as _i6;
import '../data/remote_data/ticket_data.dart' as _i36;
import '../data/remote_data/twilio_data.dart' as _i23;
import '../data/repository/activity_repo.dart' as _i20;
import '../data/repository/agent_repo.dart' as _i18;
import '../data/repository/attendance_repo.dart' as _i39;
import '../data/repository/auth_repo.dart' as _i12;
import '../data/repository/deals_repo.dart' as _i28;
import '../data/repository/explorer_repo.dart' as _i25;
import '../data/repository/finance_repo.dart' as _i14;
import '../data/repository/lead_repo.dart' as _i30;
import '../data/repository/linkus_repo.dart' as _i32;
import '../data/repository/listings_repo.dart' as _i16;
import '../data/repository/notification_repo.dart' as _i8;
import '../data/repository/ticket_repo.dart' as _i35;
import '../data/repository/twilio_repo.dart' as _i22;
import '../model/activity_model.dart' as _i63;
import '../model/deal_model.dart' as _i69;
import '../model/lead_model.dart' as _i57;
import '../services/location_service.dart' as _i5;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i72;
import '../view/add_followup_screen/cubit/add_followup_cubit.dart' as _i70;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i66;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i68;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i56;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i27;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i67;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i53;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i43;
import '../view/check_in_page/cubit/check_in_cubit.dart' as _i60;
import '../view/cold_lead_screen/cubit/cold_lead_cubit.dart' as _i37;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i50;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i51;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i65;
import '../view/earnings/cubit/earnings_cubit.dart' as _i41;
import '../view/enquiries_screen/cubit/enquiries_cubit.dart' as _i38;
import '../view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart'
    as _i46;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i34;
import '../view/home_screen/cubit/home_cubit.dart' as _i54;
import '../view/hot_leads_assigned_today_screen/cubit/hot_leads_assigned_today_cubit.dart'
    as _i49;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i45;
import '../view/lead_source/presentation/cubit/lead_source_cubit.dart' as _i74;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i71;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i42;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i47;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i73;
import '../view/login/cubit/login_cubit.dart' as _i24;
import '../view/my_activities/cubit/my_activities_cubit.dart' as _i61;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i11;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i59;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i62;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i44;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i55;
import 'injectable_module.dart' as _i75;
import 'objectbox.dart' as _i3;

const String _Stage = 'Stage';
const String _Prod = 'Prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    await gh.factoryAsync<_i3.ObjectBox>(
      () => registerModules.getStore(),
      preResolve: true,
    );
    await gh.singletonAsync<_i4.SharedPreferences>(
      () => registerModules.getSharedPreference(),
      preResolve: true,
    );
    gh.factory<String>(
      () => registerModules.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Stage},
    );
    gh.factory<String>(
      () => registerModules.baseProdUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Prod},
    );
    gh.factory<_i5.LocationService>(() => _i5.LocationServiceImpl());
    gh.factory<_i6.PendingCallFeedbackRepo>(
        () => _i7.PendingCallFeedbackData(objectBox: gh<_i3.ObjectBox>()));
    gh.factory<_i8.NotificationRepo>(
        () => _i9.NotificationData(objectBox: gh<_i3.ObjectBox>()));
    gh.factory<String>(
      () => registerModules.awsProdBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Prod},
    );
    gh.factory<String>(
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.lazySingleton<_i10.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i11.NotificationScreenCubit>(
        () => _i11.NotificationScreenCubit(gh<_i8.NotificationRepo>()));
    gh.factory<_i12.AuthRepo>(() => _i13.AuthData(gh<_i10.Dio>()));
    gh.factory<_i14.FinanceRepo>(() => _i15.FinanceData(dio: gh<_i10.Dio>()));
    gh.factory<_i16.ListingsRepo>(() => _i17.ListingsData(dio: gh<_i10.Dio>()));
    gh.factory<_i18.AgentRepo>(() => _i19.AgentData(dio: gh<_i10.Dio>()));
    gh.factory<_i20.ActivityRepo>(() => _i21.ActivityData(dio: gh<_i10.Dio>()));
    gh.factory<_i22.TwilioRepo>(() => _i23.TwilioData(dio: gh<_i10.Dio>()));
    gh.factory<_i24.LoginCubit>(() => _i24.LoginCubit(gh<_i12.AuthRepo>()));
    gh.factory<_i25.ExplorerRepo>(() => _i26.ExplorerData(dio: gh<_i10.Dio>()));
    gh.factoryParam<_i27.AddTaskCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i27.AddTaskCubit(
          gh<_i20.ActivityRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i18.AgentRepo>(),
          leadId,
        ));
    gh.factory<_i28.DealsRepo>(() => _i29.DealData(dio: gh<_i10.Dio>()));
    gh.factory<_i30.LeadRepo>(() => _i31.LeadData(dio: gh<_i10.Dio>()));
    gh.factory<_i32.LinkusRepo>(() => _i33.LinkusData(dio: gh<_i10.Dio>()));
    gh.factoryParam<_i34.ExplorerScreenCubit, int?, dynamic>((
      tab,
      _,
    ) =>
        _i34.ExplorerScreenCubit(
          gh<_i25.ExplorerRepo>(),
          gh<_i16.ListingsRepo>(),
          tab,
        ));
    gh.factory<_i35.TicketRepo>(() => _i36.TicketData(dio: gh<_i10.Dio>()));
    gh.factory<_i37.ColdLeadCubit>(
        () => _i37.ColdLeadCubit(activityRepo: gh<_i20.ActivityRepo>()));
    gh.factory<_i38.EnquiriesCubit>(
        () => _i38.EnquiriesCubit(activityRepo: gh<_i20.ActivityRepo>()));
    gh.factory<_i39.AttendanceRepo>(
        () => _i40.AttendanceData(dio: gh<_i10.Dio>()));
    gh.factory<_i41.EarningsCubit>(
        () => _i41.EarningsCubit(financeRepo: gh<_i14.FinanceRepo>()));
    gh.factory<_i42.LeadsCubit>(() => _i42.LeadsCubit(
          gh<_i30.LeadRepo>(),
          gh<_i32.LinkusRepo>(),
          gh<_i25.ExplorerRepo>(),
        ));
    gh.factoryParam<_i43.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i43.ChatCubit(
          gh<_i35.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i44.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i44.TicketDetailsCubit(
          gh<_i35.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i45.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i45.LeadDetailCubit(
          gh<_i30.LeadRepo>(),
          leadId,
          gh<_i25.ExplorerRepo>(),
        ));
    gh.factory<_i46.ExpiredHotLeadExplorerCubit>(
        () => _i46.ExpiredHotLeadExplorerCubit(
              gh<_i25.ExplorerRepo>(),
              gh<_i30.LeadRepo>(),
            ));
    gh.factoryParam<_i47.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i47.ListingDetailCubit(
          gh<_i16.ListingsRepo>(),
          id,
        ));
    gh.singleton<_i48.ActivityCubit>(
        () => _i48.ActivityCubit(gh<_i20.ActivityRepo>()));
    gh.factory<_i49.HotLeadsAssignedTodayCubit>(
        () => _i49.HotLeadsAssignedTodayCubit(gh<_i20.ActivityRepo>()));
    gh.factoryParam<_i50.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i50.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i28.DealsRepo>(),
        ));
    gh.factoryParam<_i51.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i51.DealDetailsCubit(
          gh<_i28.DealsRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i30.LeadRepo>(),
          dealId,
        ));
    gh.singleton<_i52.CallBloc>(() => _i52.CallBloc(
          gh<_i20.ActivityRepo>(),
          gh<_i32.LinkusRepo>(),
        ));
    gh.factory<_i53.CallFeedbackCubit>(() => _i53.CallFeedbackCubit(
          gh<_i30.LeadRepo>(),
          gh<_i6.PendingCallFeedbackRepo>(),
          gh<_i20.ActivityRepo>(),
          gh<_i18.AgentRepo>(),
        ));
    gh.factory<_i54.HomeCubit>(() => _i54.HomeCubit(
          gh<_i20.ActivityRepo>(),
          gh<_i30.LeadRepo>(),
          gh<_i16.ListingsRepo>(),
        ));
    gh.factory<_i55.TicketsScreenCubit>(
        () => _i55.TicketsScreenCubit(gh<_i35.TicketRepo>()));
    gh.factoryParam<_i56.AddPocketListingCubit, bool, _i57.Lead?>((
      _isEdit,
      _lead,
    ) =>
        _i56.AddPocketListingCubit(
          gh<_i30.LeadRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i25.ExplorerRepo>(),
          _isEdit,
          _lead,
        ));
    gh.singleton<_i58.AuthBloc>(() => _i58.AuthBloc(
          gh<_i12.AuthRepo>(),
          gh<_i8.NotificationRepo>(),
          gh<_i20.ActivityRepo>(),
          gh<_i6.PendingCallFeedbackRepo>(),
          gh<_i22.TwilioRepo>(),
        ));
    gh.factoryParam<_i59.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i59.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i25.ExplorerRepo>(),
        ));
    gh.factory<_i60.CheckInCubit>(() => _i60.CheckInCubit(
          gh<_i5.LocationService>(),
          gh<_i39.AttendanceRepo>(),
        ));
    gh.factory<_i61.MyActivitiesCubit>(
        () => _i61.MyActivitiesCubit(gh<_i20.ActivityRepo>()));
    gh.factoryParam<_i62.TaskDetailCubit, String, _i63.Activity?>((
      taskId,
      activity,
    ) =>
        _i62.TaskDetailCubit(
          gh<_i20.ActivityRepo>(),
          taskId,
          activity,
          gh<_i30.LeadRepo>(),
          gh<_i18.AgentRepo>(),
          gh<_i25.ExplorerRepo>(),
          gh<_i16.ListingsRepo>(),
        ));
    gh.lazySingleton<_i64.ListStateCubit>(() => _i64.ListStateCubit(
          gh<_i25.ExplorerRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i30.LeadRepo>(),
        ));
    gh.factory<_i65.DealsCubit>(() => _i65.DealsCubit(gh<_i28.DealsRepo>()));
    gh.factoryParam<_i66.AddLeadCubit, Map<String, dynamic>?, dynamic>((
      data,
      _,
    ) =>
        _i66.AddLeadCubit(
          gh<_i30.LeadRepo>(),
          data,
        ));
    gh.factory<_i67.AddTicketCubit>(() => _i67.AddTicketCubit(
          gh<_i35.TicketRepo>(),
          gh<_i28.DealsRepo>(),
          gh<_i30.LeadRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i18.AgentRepo>(),
        ));
    gh.factoryParam<_i68.AddListingCubit, bool, _i69.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i68.AddListingCubit(
          gh<_i30.LeadRepo>(),
          gh<_i16.ListingsRepo>(),
          gh<_i28.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factoryParam<_i70.AddFollowupCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i70.AddFollowupCubit(
          gh<_i30.LeadRepo>(),
          gh<_i20.ActivityRepo>(),
          gh<_i18.AgentRepo>(),
          leadId,
          gh<_i8.NotificationRepo>(),
        ));
    gh.factory<_i71.LeadsListExplorerCubit>(() => _i71.LeadsListExplorerCubit(
          gh<_i25.ExplorerRepo>(),
          gh<_i16.ListingsRepo>(),
        ));
    gh.factoryParam<_i72.AddDealCubit, _i69.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i72.AddDealCubit(
          gh<_i16.ListingsRepo>(),
          gh<_i30.LeadRepo>(),
          gh<_i28.DealsRepo>(),
          gh<_i18.AgentRepo>(),
          deal,
        ));
    gh.factory<_i73.ListingsCubit>(() => _i73.ListingsCubit(
          gh<_i16.ListingsRepo>(),
          gh<_i25.ExplorerRepo>(),
          gh<_i18.AgentRepo>(),
        ));
    gh.factory<_i74.LeadSourceCubit>(
        () => _i74.LeadSourceCubit(leadData: gh<_i30.LeadRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i75.RegisterModules {}
