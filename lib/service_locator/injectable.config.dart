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

import '../app/activity_cubit/activity_cubit.dart' as _i36;
import '../app/auth_bloc/auth_bloc.dart' as _i39;
import '../app/call_bloc/call_bloc.dart' as _i40;
import '../app/list_state_cubit/list_state_cubit.dart' as _i5;
import '../data/objectbox/repo_impl/notification_data.dart' as _i9;
import '../data/objectbox/repo_impl/pending_call_feedback_data.dart' as _i7;
import '../data/remote_data/activity_data.dart' as _i19;
import '../data/remote_data/agent_data.dart' as _i17;
import '../data/remote_data/auth_data.dart' as _i13;
import '../data/remote_data/deals_data.dart' as _i24;
import '../data/remote_data/explorer_data.dart' as _i22;
import '../data/remote_data/lead_data.dart' as _i26;
import '../data/remote_data/linkus_data.dart' as _i28;
import '../data/remote_data/listings_data.dart' as _i15;
import '../data/remote_data/pending_call_feedback_repo.dart' as _i6;
import '../data/remote_data/ticket_data.dart' as _i31;
import '../data/repository/activity_repo.dart' as _i18;
import '../data/repository/agent_repo.dart' as _i16;
import '../data/repository/auth_repo.dart' as _i12;
import '../data/repository/deals_repo.dart' as _i23;
import '../data/repository/explorer_repo.dart' as _i21;
import '../data/repository/lead_repo.dart' as _i25;
import '../data/repository/linkus_repo.dart' as _i27;
import '../data/repository/listings_repo.dart' as _i14;
import '../data/repository/notification_repo.dart' as _i8;
import '../data/repository/ticket_repo.dart' as _i30;
import '../model/activity_model.dart' as _i48;
import '../model/deal_model.dart' as _i53;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i56;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i46;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i52;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i42;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i49;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i51;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i44;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i32;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i37;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i38;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i45;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i29;
import '../view/home_screen/cubit/home_cubit.dart' as _i50;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i34;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i55;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i54;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i35;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i57;
import '../view/login/cubit/login_cubit.dart' as _i20;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i11;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i43;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i47;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i33;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i41;
import 'injectable_module.dart' as _i58;
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
    gh.lazySingleton<_i5.ListStateCubit>(() => _i5.ListStateCubit());
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
    gh.factory<_i14.ListingsRepo>(() => _i15.ListingsData(dio: gh<_i10.Dio>()));
    gh.factory<_i16.AgentRepo>(() => _i17.AgentData(dio: gh<_i10.Dio>()));
    gh.factory<_i18.ActivityRepo>(() => _i19.ActivityData(dio: gh<_i10.Dio>()));
    gh.factory<_i20.LoginCubit>(() => _i20.LoginCubit(gh<_i12.AuthRepo>()));
    gh.factory<_i21.ExplorerRepo>(() => _i22.ExplorerData(dio: gh<_i10.Dio>()));
    gh.factory<_i23.DealsRepo>(() => _i24.DealData(dio: gh<_i10.Dio>()));
    gh.factory<_i25.LeadRepo>(() => _i26.LeadData(dio: gh<_i10.Dio>()));
    gh.factory<_i27.LinkusRepo>(() => _i28.LinkusData(dio: gh<_i10.Dio>()));
    gh.factoryParam<_i29.ExplorerScreenCubit, int?, dynamic>((
      tab,
      _,
    ) =>
        _i29.ExplorerScreenCubit(
          gh<_i21.ExplorerRepo>(),
          gh<_i14.ListingsRepo>(),
          tab,
        ));
    gh.factory<_i30.TicketRepo>(() => _i31.TicketData(dio: gh<_i10.Dio>()));
    gh.factoryParam<_i32.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i32.ChatCubit(
          gh<_i30.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i33.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i33.TicketDetailsCubit(
          gh<_i30.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i34.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i34.LeadDetailCubit(
          gh<_i25.LeadRepo>(),
          leadId,
          gh<_i21.ExplorerRepo>(),
        ));
    gh.factoryParam<_i35.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i35.ListingDetailCubit(
          gh<_i14.ListingsRepo>(),
          id,
        ));
    gh.singleton<_i36.ActivityCubit>(
        () => _i36.ActivityCubit(gh<_i18.ActivityRepo>()));
    gh.factoryParam<_i37.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i37.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i23.DealsRepo>(),
        ));
    gh.factoryParam<_i38.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i38.DealDetailsCubit(
          gh<_i23.DealsRepo>(),
          gh<_i14.ListingsRepo>(),
          gh<_i25.LeadRepo>(),
          dealId,
        ));
    gh.singleton<_i39.AuthBloc>(() => _i39.AuthBloc(
          gh<_i12.AuthRepo>(),
          gh<_i8.NotificationRepo>(),
          gh<_i18.ActivityRepo>(),
          gh<_i6.PendingCallFeedbackRepo>(),
        ));
    gh.singleton<_i40.CallBloc>(() => _i40.CallBloc(
          gh<_i18.ActivityRepo>(),
          gh<_i27.LinkusRepo>(),
        ));
    gh.factory<_i41.TicketsScreenCubit>(
        () => _i41.TicketsScreenCubit(gh<_i30.TicketRepo>()));
    gh.factory<_i42.AddPocketListingCubit>(() => _i42.AddPocketListingCubit(
          gh<_i25.LeadRepo>(),
          gh<_i14.ListingsRepo>(),
          gh<_i21.ExplorerRepo>(),
        ));
    gh.factoryParam<_i43.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i43.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i21.ExplorerRepo>(),
        ));
    gh.factory<_i44.CallFeedbackCubit>(() => _i44.CallFeedbackCubit(
          gh<_i25.LeadRepo>(),
          gh<_i6.PendingCallFeedbackRepo>(),
          gh<_i18.ActivityRepo>(),
        ));
    gh.factory<_i45.DealsCubit>(() => _i45.DealsCubit(gh<_i23.DealsRepo>()));
    gh.factoryParam<_i46.AddLeadCubit, Map<String, dynamic>?, dynamic>((
      data,
      _,
    ) =>
        _i46.AddLeadCubit(
          gh<_i25.LeadRepo>(),
          data,
        ));
    gh.factoryParam<_i47.TaskDetailCubit, String, _i48.Activity?>((
      taskId,
      activity,
    ) =>
        _i47.TaskDetailCubit(
          gh<_i18.ActivityRepo>(),
          taskId,
          activity,
          gh<_i25.LeadRepo>(),
          gh<_i16.AgentRepo>(),
          gh<_i21.ExplorerRepo>(),
        ));
    gh.factory<_i49.AddTaskCubit>(() => _i49.AddTaskCubit(
          gh<_i18.ActivityRepo>(),
          gh<_i14.ListingsRepo>(),
          gh<_i16.AgentRepo>(),
        ));
    gh.factory<_i50.HomeCubit>(() => _i50.HomeCubit(
          gh<_i18.ActivityRepo>(),
          gh<_i25.LeadRepo>(),
        ));
    gh.factory<_i51.AddTicketCubit>(() => _i51.AddTicketCubit(
          gh<_i30.TicketRepo>(),
          gh<_i23.DealsRepo>(),
          gh<_i25.LeadRepo>(),
          gh<_i14.ListingsRepo>(),
          gh<_i16.AgentRepo>(),
        ));
    gh.factoryParam<_i52.AddListingCubit, bool, _i53.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i52.AddListingCubit(
          gh<_i25.LeadRepo>(),
          gh<_i14.ListingsRepo>(),
          gh<_i23.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factory<_i54.LeadsCubit>(() => _i54.LeadsCubit(
          gh<_i25.LeadRepo>(),
          gh<_i27.LinkusRepo>(),
        ));
    gh.factory<_i55.LeadsListExplorerCubit>(() => _i55.LeadsListExplorerCubit(
          gh<_i21.ExplorerRepo>(),
          gh<_i14.ListingsRepo>(),
        ));
    gh.factoryParam<_i56.AddDealCubit, _i53.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i56.AddDealCubit(
          gh<_i14.ListingsRepo>(),
          gh<_i25.LeadRepo>(),
          gh<_i23.DealsRepo>(),
          gh<_i16.AgentRepo>(),
          deal,
        ));
    gh.factory<_i57.ListingsCubit>(() => _i57.ListingsCubit(
          gh<_i14.ListingsRepo>(),
          gh<_i21.ExplorerRepo>(),
          gh<_i16.AgentRepo>(),
        ));
    return this;
  }
}

class _$RegisterModules extends _i58.RegisterModules {}
