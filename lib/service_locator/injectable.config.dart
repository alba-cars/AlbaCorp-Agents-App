// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../app/activity_cubit/activity_cubit.dart' as _i497;
import '../app/auth_bloc/auth_bloc.dart' as _i584;
import '../app/call_bloc/call_bloc.dart' as _i942;
import '../app/list_state_cubit/list_state_cubit.dart' as _i1005;
import '../app/notification_badge_cubit/notification_badge_cubit.dart' as _i320;
import '../data/objectbox/repo_impl/notification_data.dart' as _i995;
import '../data/objectbox/repo_impl/pending_call_feedback_data.dart' as _i233;
import '../data/remote_data/activity_data.dart' as _i299;
import '../data/remote_data/agent_data.dart' as _i123;
import '../data/remote_data/attendance_data.dart' as _i448;
import '../data/remote_data/auth_data.dart' as _i307;
import '../data/remote_data/deals_data.dart' as _i677;
import '../data/remote_data/explorer_data.dart' as _i552;
import '../data/remote_data/finance_data.dart' as _i262;
import '../data/remote_data/lead_data.dart' as _i964;
import '../data/remote_data/linkus_data.dart' as _i643;
import '../data/remote_data/listings_data.dart' as _i311;
import '../data/remote_data/pending_call_feedback_repo.dart' as _i911;
import '../data/remote_data/ticket_data.dart' as _i50;
import '../data/remote_data/twilio_data.dart' as _i339;
import '../data/repository/activity_repo.dart' as _i316;
import '../data/repository/agent_repo.dart' as _i829;
import '../data/repository/attendance_repo.dart' as _i383;
import '../data/repository/auth_repo.dart' as _i539;
import '../data/repository/deals_repo.dart' as _i461;
import '../data/repository/explorer_repo.dart' as _i372;
import '../data/repository/finance_repo.dart' as _i579;
import '../data/repository/lead_repo.dart' as _i242;
import '../data/repository/linkus_repo.dart' as _i527;
import '../data/repository/listings_repo.dart' as _i854;
import '../data/repository/notification_repo.dart' as _i165;
import '../data/repository/ticket_repo.dart' as _i127;
import '../data/repository/twilio_repo.dart' as _i752;
import '../model/activity_model.dart' as _i161;
import '../model/deal_model.dart' as _i15;
import '../model/lead_model.dart' as _i815;
import '../services/location_service.dart' as _i669;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i461;
import '../view/add_followup_screen/cubit/add_followup_cubit.dart' as _i258;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i161;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i863;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i1014;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i1048;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i426;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i331;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i732;
import '../view/check_in_page/cubit/check_in_cubit.dart' as _i850;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i825;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i771;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i37;
import '../view/earnings/cubit/earnings_cubit.dart' as _i88;
import '../view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart'
    as _i787;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i774;
import '../view/followups_screen/cubit/followups_cubit.dart' as _i13;
import '../view/home_screen/cubit/home_cubit.dart' as _i52;
import '../view/hot_leads_assigned_today_screen/cubit/hot_leads_assigned_today_cubit.dart'
    as _i405;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i825;
import '../view/lead_source/presentation/cubit/lead_source_cubit.dart' as _i222;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i632;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i338;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i302;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i1060;
import '../view/login/cubit/login_cubit.dart' as _i658;
import '../view/my_activities/cubit/my_activities_cubit.dart' as _i194;
import '../view/new_leads_screen/cubit/new_leads_cubit.dart' as _i330;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i60;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i178;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i140;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i273;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i96;
import 'injectable_module.dart' as _i109;
import 'objectbox.dart' as _i865;

const String _Stage = 'Stage';
const String _Prod = 'Prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    await gh.factoryAsync<_i865.ObjectBox>(
      () => registerModules.getStore(),
      preResolve: true,
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
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
    gh.factory<_i669.LocationService>(() => _i669.LocationServiceImpl());
    gh.factory<_i911.PendingCallFeedbackRepo>(
        () => _i233.PendingCallFeedbackData(objectBox: gh<_i865.ObjectBox>()));
    gh.factory<_i165.NotificationRepo>(
        () => _i995.NotificationData(objectBox: gh<_i865.ObjectBox>()));
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
    gh.lazySingleton<_i361.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i60.NotificationScreenCubit>(
        () => _i60.NotificationScreenCubit(gh<_i165.NotificationRepo>()));
    gh.factory<_i539.AuthRepo>(() => _i307.AuthData(gh<_i361.Dio>()));
    gh.factory<_i579.FinanceRepo>(
        () => _i262.FinanceData(dio: gh<_i361.Dio>()));
    gh.factory<_i854.ListingsRepo>(
        () => _i311.ListingsData(dio: gh<_i361.Dio>()));
    gh.factory<_i829.AgentRepo>(() => _i123.AgentData(dio: gh<_i361.Dio>()));
    gh.factory<_i316.ActivityRepo>(
        () => _i299.ActivityData(dio: gh<_i361.Dio>()));
    gh.factory<_i752.TwilioRepo>(() => _i339.TwilioData(dio: gh<_i361.Dio>()));
    gh.factory<_i658.LoginCubit>(() => _i658.LoginCubit(gh<_i539.AuthRepo>()));
    gh.factory<_i372.ExplorerRepo>(
        () => _i552.ExplorerData(dio: gh<_i361.Dio>()));
    gh.factoryParam<_i1048.AddTaskCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i1048.AddTaskCubit(
          gh<_i316.ActivityRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i829.AgentRepo>(),
          leadId,
        ));
    gh.factory<_i461.DealsRepo>(() => _i677.DealData(dio: gh<_i361.Dio>()));
    gh.factory<_i242.LeadRepo>(() => _i964.LeadData(dio: gh<_i361.Dio>()));
    gh.factory<_i527.LinkusRepo>(() => _i643.LinkusData(dio: gh<_i361.Dio>()));
    gh.factoryParam<_i774.ExplorerScreenCubit, int?, dynamic>((
      tab,
      _,
    ) =>
        _i774.ExplorerScreenCubit(
          gh<_i372.ExplorerRepo>(),
          gh<_i854.ListingsRepo>(),
          tab,
        ));
    gh.factory<_i127.TicketRepo>(() => _i50.TicketData(dio: gh<_i361.Dio>()));
    gh.factory<_i330.NewLeadsCubit>(
        () => _i330.NewLeadsCubit(activityRepo: gh<_i316.ActivityRepo>()));
    gh.factory<_i13.FollowupsCubit>(
        () => _i13.FollowupsCubit(activityRepo: gh<_i316.ActivityRepo>()));
    gh.factory<_i383.AttendanceRepo>(
        () => _i448.AttendanceData(dio: gh<_i361.Dio>()));
    gh.factory<_i88.EarningsCubit>(
        () => _i88.EarningsCubit(financeRepo: gh<_i579.FinanceRepo>()));
    gh.factory<_i338.LeadsCubit>(() => _i338.LeadsCubit(
          gh<_i242.LeadRepo>(),
          gh<_i527.LinkusRepo>(),
          gh<_i372.ExplorerRepo>(),
        ));
    gh.factoryParam<_i732.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i732.ChatCubit(
          gh<_i127.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i273.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i273.TicketDetailsCubit(
          gh<_i127.TicketRepo>(),
          ticketId,
        ));
    gh.factory<_i787.ExpiredHotLeadExplorerCubit>(
        () => _i787.ExpiredHotLeadExplorerCubit(
              gh<_i372.ExplorerRepo>(),
              gh<_i242.LeadRepo>(),
            ));
    gh.factoryParam<_i302.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i302.ListingDetailCubit(
          gh<_i854.ListingsRepo>(),
          id,
        ));
    gh.singleton<_i497.ActivityCubit>(
        () => _i497.ActivityCubit(gh<_i316.ActivityRepo>()));
    gh.factory<_i405.HotLeadsAssignedTodayCubit>(
        () => _i405.HotLeadsAssignedTodayCubit(gh<_i316.ActivityRepo>()));
    gh.factoryParam<_i825.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i825.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i461.DealsRepo>(),
        ));
    gh.factoryParam<_i771.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i771.DealDetailsCubit(
          gh<_i461.DealsRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i242.LeadRepo>(),
          dealId,
        ));
    gh.singleton<_i942.CallBloc>(() => _i942.CallBloc(
          gh<_i316.ActivityRepo>(),
          gh<_i527.LinkusRepo>(),
        ));
    gh.factory<_i331.CallFeedbackCubit>(() => _i331.CallFeedbackCubit(
          gh<_i242.LeadRepo>(),
          gh<_i911.PendingCallFeedbackRepo>(),
          gh<_i316.ActivityRepo>(),
          gh<_i829.AgentRepo>(),
        ));
    gh.factory<_i52.HomeCubit>(() => _i52.HomeCubit(
          gh<_i316.ActivityRepo>(),
          gh<_i242.LeadRepo>(),
          gh<_i854.ListingsRepo>(),
        ));
    gh.factory<_i96.TicketsScreenCubit>(
        () => _i96.TicketsScreenCubit(gh<_i127.TicketRepo>()));
    gh.factoryParam<_i1014.AddPocketListingCubit, bool, _i815.Lead?>((
      _isEdit,
      _lead,
    ) =>
        _i1014.AddPocketListingCubit(
          gh<_i242.LeadRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i372.ExplorerRepo>(),
          _isEdit,
          _lead,
        ));
    gh.singleton<_i584.AuthBloc>(() => _i584.AuthBloc(
          gh<_i539.AuthRepo>(),
          gh<_i165.NotificationRepo>(),
          gh<_i316.ActivityRepo>(),
          gh<_i911.PendingCallFeedbackRepo>(),
          gh<_i752.TwilioRepo>(),
        ));
    gh.factoryParam<_i178.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i178.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i372.ExplorerRepo>(),
        ));
    gh.factory<_i850.CheckInCubit>(() => _i850.CheckInCubit(
          gh<_i669.LocationService>(),
          gh<_i383.AttendanceRepo>(),
        ));
    gh.factory<_i320.NotificationBadgeCubit>(() => _i320.NotificationBadgeCubit(
          gh<_i165.NotificationRepo>(),
          gh<_i242.LeadRepo>(),
          gh<_i584.AuthBloc>(),
        ));
    gh.factory<_i194.MyActivitiesCubit>(
        () => _i194.MyActivitiesCubit(gh<_i316.ActivityRepo>()));
    gh.factoryParam<_i140.TaskDetailCubit, String, _i161.Activity?>((
      taskId,
      activity,
    ) =>
        _i140.TaskDetailCubit(
          gh<_i316.ActivityRepo>(),
          taskId,
          activity,
          gh<_i242.LeadRepo>(),
          gh<_i829.AgentRepo>(),
          gh<_i372.ExplorerRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i165.NotificationRepo>(),
          gh<_i320.NotificationBadgeCubit>(),
        ));
    gh.lazySingleton<_i1005.ListStateCubit>(() => _i1005.ListStateCubit(
          gh<_i372.ExplorerRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i242.LeadRepo>(),
        ));
    gh.factory<_i37.DealsCubit>(() => _i37.DealsCubit(gh<_i461.DealsRepo>()));
    gh.factoryParam<_i161.AddLeadCubit, Map<String, dynamic>?, dynamic>((
      data,
      _,
    ) =>
        _i161.AddLeadCubit(
          gh<_i242.LeadRepo>(),
          data,
        ));
    gh.factory<_i426.AddTicketCubit>(() => _i426.AddTicketCubit(
          gh<_i127.TicketRepo>(),
          gh<_i461.DealsRepo>(),
          gh<_i242.LeadRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i829.AgentRepo>(),
        ));
    gh.factoryParam<_i863.AddListingCubit, bool, _i15.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i863.AddListingCubit(
          gh<_i242.LeadRepo>(),
          gh<_i854.ListingsRepo>(),
          gh<_i461.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factoryParam<_i258.AddFollowupCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i258.AddFollowupCubit(
          gh<_i242.LeadRepo>(),
          gh<_i316.ActivityRepo>(),
          gh<_i829.AgentRepo>(),
          leadId,
          gh<_i165.NotificationRepo>(),
        ));
    gh.factory<_i632.LeadsListExplorerCubit>(() => _i632.LeadsListExplorerCubit(
          gh<_i372.ExplorerRepo>(),
          gh<_i854.ListingsRepo>(),
        ));
    gh.factoryParam<_i461.AddDealCubit, _i15.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i461.AddDealCubit(
          gh<_i854.ListingsRepo>(),
          gh<_i242.LeadRepo>(),
          gh<_i461.DealsRepo>(),
          gh<_i829.AgentRepo>(),
          deal,
        ));
    gh.factory<_i1060.ListingsCubit>(() => _i1060.ListingsCubit(
          gh<_i854.ListingsRepo>(),
          gh<_i372.ExplorerRepo>(),
          gh<_i829.AgentRepo>(),
        ));
    gh.factory<_i222.LeadSourceCubit>(
        () => _i222.LeadSourceCubit(leadData: gh<_i242.LeadRepo>()));
    gh.factoryParam<_i825.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i825.LeadDetailCubit(
          gh<_i242.LeadRepo>(),
          leadId,
          gh<_i372.ExplorerRepo>(),
          gh<_i165.NotificationRepo>(),
          gh<_i320.NotificationBadgeCubit>(),
        ));
    return this;
  }
}

class _$RegisterModules extends _i109.RegisterModules {}
