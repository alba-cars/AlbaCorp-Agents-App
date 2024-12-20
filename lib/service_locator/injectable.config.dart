// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../app/activity_cubit/activity_cubit.dart' as _i43;
import '../app/auth_bloc/auth_bloc.dart' as _i47;
import '../app/call_bloc/call_bloc.dart' as _i48;
import '../app/list_state_cubit/list_state_cubit.dart' as _i58;
import '../data/objectbox/repo_impl/notification_data.dart' as _i8;
import '../data/objectbox/repo_impl/pending_call_feedback_data.dart' as _i6;
import '../data/remote_data/activity_data.dart' as _i20;
import '../data/remote_data/agent_data.dart' as _i18;
import '../data/remote_data/auth_data.dart' as _i12;
import '../data/remote_data/deals_data.dart' as _i26;
import '../data/remote_data/explorer_data.dart' as _i23;
import '../data/remote_data/finance_data.dart' as _i14;
import '../data/remote_data/lead_data.dart' as _i28;
import '../data/remote_data/linkus_data.dart' as _i30;
import '../data/remote_data/listings_data.dart' as _i16;
import '../data/remote_data/pending_call_feedback_repo.dart' as _i5;
import '../data/remote_data/ticket_data.dart' as _i33;
import '../data/repository/activity_repo.dart' as _i19;
import '../data/repository/agent_repo.dart' as _i17;
import '../data/repository/auth_repo.dart' as _i11;
import '../data/repository/deals_repo.dart' as _i25;
import '../data/repository/explorer_repo.dart' as _i22;
import '../data/repository/finance_repo.dart' as _i13;
import '../data/repository/lead_repo.dart' as _i27;
import '../data/repository/linkus_repo.dart' as _i29;
import '../data/repository/listings_repo.dart' as _i15;
import '../data/repository/notification_repo.dart' as _i7;
import '../data/repository/ticket_repo.dart' as _i32;
import '../model/activity_model.dart' as _i57;
import '../model/deal_model.dart' as _i63;
import '../model/lead_model.dart' as _i53;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i66;
import '../view/add_followup_screen/cubit/add_followup_cubit.dart' as _i64;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i60;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i62;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i52;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i24;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i61;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i49;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i38;
import '../view/cold_lead_screen/cubit/cold_lead_cubit.dart' as _i34;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i45;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i46;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i59;
import '../view/earnings/cubit/earnings_cubit.dart' as _i36;
import '../view/enquiries_screen/cubit/enquiries_cubit.dart' as _i35;
import '../view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart'
    as _i41;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i31;
import '../view/home_screen/cubit/home_cubit.dart' as _i50;
import '../view/hot_leads_assigned_today_screen/cubit/hot_leads_assigned_today_cubit.dart'
    as _i44;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i40;
import '../view/lead_source/presentation/cubit/lead_source_cubit.dart' as _i68;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i65;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i37;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i42;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i67;
import '../view/login/cubit/login_cubit.dart' as _i21;
import '../view/my_activities/cubit/my_activities_cubit.dart' as _i55;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i10;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i54;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i56;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i39;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i51;
import 'injectable_module.dart' as _i69;
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
    await gh.factoryAsync<_i4.SharedPreferences>(
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
    gh.factory<_i5.PendingCallFeedbackRepo>(
        () => _i6.PendingCallFeedbackData(objectBox: gh<_i3.ObjectBox>()));
    gh.factory<_i7.NotificationRepo>(
        () => _i8.NotificationData(objectBox: gh<_i3.ObjectBox>()));
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
    gh.lazySingleton<_i9.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i10.NotificationScreenCubit>(
        () => _i10.NotificationScreenCubit(gh<_i7.NotificationRepo>()));
    gh.factory<_i11.AuthRepo>(() => _i12.AuthData(gh<_i9.Dio>()));
    gh.factory<_i13.FinanceRepo>(() => _i14.FinanceData(dio: gh<_i9.Dio>()));
    gh.factory<_i15.ListingsRepo>(() => _i16.ListingsData(dio: gh<_i9.Dio>()));
    gh.factory<_i17.AgentRepo>(() => _i18.AgentData(dio: gh<_i9.Dio>()));
    gh.factory<_i19.ActivityRepo>(() => _i20.ActivityData(dio: gh<_i9.Dio>()));
    gh.factory<_i21.LoginCubit>(() => _i21.LoginCubit(gh<_i11.AuthRepo>()));
    gh.factory<_i22.ExplorerRepo>(() => _i23.ExplorerData(dio: gh<_i9.Dio>()));
    gh.factoryParam<_i24.AddTaskCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i24.AddTaskCubit(
          gh<_i19.ActivityRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i17.AgentRepo>(),
          leadId,
        ));
    gh.factory<_i25.DealsRepo>(() => _i26.DealData(dio: gh<_i9.Dio>()));
    gh.factory<_i27.LeadRepo>(() => _i28.LeadData(dio: gh<_i9.Dio>()));
    gh.factory<_i29.LinkusRepo>(() => _i30.LinkusData(dio: gh<_i9.Dio>()));
    gh.factoryParam<_i31.ExplorerScreenCubit, int?, dynamic>((
      tab,
      _,
    ) =>
        _i31.ExplorerScreenCubit(
          gh<_i22.ExplorerRepo>(),
          gh<_i15.ListingsRepo>(),
          tab,
        ));
    gh.factory<_i32.TicketRepo>(() => _i33.TicketData(dio: gh<_i9.Dio>()));
    gh.factory<_i34.ColdLeadCubit>(
        () => _i34.ColdLeadCubit(activityRepo: gh<_i19.ActivityRepo>()));
    gh.factory<_i35.EnquiriesCubit>(
        () => _i35.EnquiriesCubit(activityRepo: gh<_i19.ActivityRepo>()));
    gh.factory<_i36.EarningsCubit>(
        () => _i36.EarningsCubit(financeRepo: gh<_i13.FinanceRepo>()));
    gh.factory<_i37.LeadsCubit>(() => _i37.LeadsCubit(
          gh<_i27.LeadRepo>(),
          gh<_i29.LinkusRepo>(),
          gh<_i22.ExplorerRepo>(),
        ));
    gh.factoryParam<_i38.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i38.ChatCubit(
          gh<_i32.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i39.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i39.TicketDetailsCubit(
          gh<_i32.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i40.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i40.LeadDetailCubit(
          gh<_i27.LeadRepo>(),
          leadId,
          gh<_i22.ExplorerRepo>(),
        ));
    gh.factory<_i41.ExpiredHotLeadExplorerCubit>(
        () => _i41.ExpiredHotLeadExplorerCubit(
              gh<_i22.ExplorerRepo>(),
              gh<_i27.LeadRepo>(),
            ));
    gh.factoryParam<_i42.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i42.ListingDetailCubit(
          gh<_i15.ListingsRepo>(),
          id,
        ));
    gh.singleton<_i43.ActivityCubit>(
        () => _i43.ActivityCubit(gh<_i19.ActivityRepo>()));
    gh.factory<_i44.HotLeadsAssignedTodayCubit>(
        () => _i44.HotLeadsAssignedTodayCubit(gh<_i19.ActivityRepo>()));
    gh.factoryParam<_i45.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i45.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i25.DealsRepo>(),
        ));
    gh.factoryParam<_i46.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i46.DealDetailsCubit(
          gh<_i25.DealsRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i27.LeadRepo>(),
          dealId,
        ));
    gh.singleton<_i47.AuthBloc>(() => _i47.AuthBloc(
          gh<_i11.AuthRepo>(),
          gh<_i7.NotificationRepo>(),
          gh<_i19.ActivityRepo>(),
          gh<_i5.PendingCallFeedbackRepo>(),
        ));
    gh.singleton<_i48.CallBloc>(() => _i48.CallBloc(
          gh<_i19.ActivityRepo>(),
          gh<_i29.LinkusRepo>(),
        ));
    gh.factory<_i49.CallFeedbackCubit>(() => _i49.CallFeedbackCubit(
          gh<_i27.LeadRepo>(),
          gh<_i5.PendingCallFeedbackRepo>(),
          gh<_i19.ActivityRepo>(),
          gh<_i17.AgentRepo>(),
        ));
    gh.factory<_i50.HomeCubit>(() => _i50.HomeCubit(
          gh<_i19.ActivityRepo>(),
          gh<_i27.LeadRepo>(),
          gh<_i15.ListingsRepo>(),
        ));
    gh.factory<_i51.TicketsScreenCubit>(
        () => _i51.TicketsScreenCubit(gh<_i32.TicketRepo>()));
    gh.factoryParam<_i52.AddPocketListingCubit, bool, _i53.Lead?>((
      _isEdit,
      _lead,
    ) =>
        _i52.AddPocketListingCubit(
          gh<_i27.LeadRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i22.ExplorerRepo>(),
          _isEdit,
          _lead,
        ));
    gh.factoryParam<_i54.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i54.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i22.ExplorerRepo>(),
        ));
    gh.factory<_i55.MyActivitiesCubit>(
        () => _i55.MyActivitiesCubit(gh<_i19.ActivityRepo>()));
    gh.factoryParam<_i56.TaskDetailCubit, String, _i57.Activity?>((
      taskId,
      activity,
    ) =>
        _i56.TaskDetailCubit(
          gh<_i19.ActivityRepo>(),
          taskId,
          activity,
          gh<_i27.LeadRepo>(),
          gh<_i17.AgentRepo>(),
          gh<_i22.ExplorerRepo>(),
          gh<_i15.ListingsRepo>(),
        ));
    gh.lazySingleton<_i58.ListStateCubit>(() => _i58.ListStateCubit(
          gh<_i22.ExplorerRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i27.LeadRepo>(),
        ));
    gh.factory<_i59.DealsCubit>(() => _i59.DealsCubit(gh<_i25.DealsRepo>()));
    gh.factoryParam<_i60.AddLeadCubit, Map<String, dynamic>?, dynamic>((
      data,
      _,
    ) =>
        _i60.AddLeadCubit(
          gh<_i27.LeadRepo>(),
          data,
        ));
    gh.factory<_i61.AddTicketCubit>(() => _i61.AddTicketCubit(
          gh<_i32.TicketRepo>(),
          gh<_i25.DealsRepo>(),
          gh<_i27.LeadRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i17.AgentRepo>(),
        ));
    gh.factoryParam<_i62.AddListingCubit, bool, _i63.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i62.AddListingCubit(
          gh<_i27.LeadRepo>(),
          gh<_i15.ListingsRepo>(),
          gh<_i25.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factoryParam<_i64.AddFollowupCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i64.AddFollowupCubit(
          gh<_i27.LeadRepo>(),
          gh<_i19.ActivityRepo>(),
          gh<_i17.AgentRepo>(),
          leadId,
          gh<_i7.NotificationRepo>(),
        ));
    gh.factory<_i65.LeadsListExplorerCubit>(() => _i65.LeadsListExplorerCubit(
          gh<_i22.ExplorerRepo>(),
          gh<_i15.ListingsRepo>(),
        ));
    gh.factoryParam<_i66.AddDealCubit, _i63.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i66.AddDealCubit(
          gh<_i15.ListingsRepo>(),
          gh<_i27.LeadRepo>(),
          gh<_i25.DealsRepo>(),
          gh<_i17.AgentRepo>(),
          deal,
        ));
    gh.factory<_i67.ListingsCubit>(() => _i67.ListingsCubit(
          gh<_i15.ListingsRepo>(),
          gh<_i22.ExplorerRepo>(),
          gh<_i17.AgentRepo>(),
        ));
    gh.factory<_i68.LeadSourceCubit>(
        () => _i68.LeadSourceCubit(leadData: gh<_i27.LeadRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i69.RegisterModules {}
