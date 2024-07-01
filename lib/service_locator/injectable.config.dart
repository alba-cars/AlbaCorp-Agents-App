// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../app/activity_cubit/activity_cubit.dart' as _i33;
import '../app/auth_bloc/auth_bloc.dart' as _i46;
import '../app/call_bloc/call_bloc.dart' as _i36;
import '../app/list_state_cubit/list_state_cubit.dart' as _i5;
import '../data/objectbox/repo_impl/notification_data.dart' as _i7;
import '../data/remote_data/activity_data.dart' as _i17;
import '../data/remote_data/agent_data.dart' as _i15;
import '../data/remote_data/auth_data.dart' as _i11;
import '../data/remote_data/deals_data.dart' as _i22;
import '../data/remote_data/explorer_data.dart' as _i20;
import '../data/remote_data/lead_data.dart' as _i24;
import '../data/remote_data/linkus_data.dart' as _i26;
import '../data/remote_data/listings_data.dart' as _i13;
import '../data/remote_data/ticket_data.dart' as _i28;
import '../data/repository/activity_repo.dart' as _i16;
import '../data/repository/agent_repo.dart' as _i14;
import '../data/repository/auth_repo.dart' as _i10;
import '../data/repository/deals_repo.dart' as _i21;
import '../data/repository/explorer_repo.dart' as _i19;
import '../data/repository/lead_repo.dart' as _i23;
import '../data/repository/linkus_repo.dart' as _i25;
import '../data/repository/listings_repo.dart' as _i12;
import '../data/repository/notification_repo.dart' as _i6;
import '../data/repository/ticket_repo.dart' as _i27;
import '../model/activity_model.dart' as _i42;
import '../model/deal_model.dart' as _i48;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i52;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i54;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i47;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i38;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i43;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i45;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i55;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i29;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i34;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i35;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i40;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i50;
import '../view/home_screen/cubit/home_cubit.dart' as _i44;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i31;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i51;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i49;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i32;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i53;
import '../view/login/cubit/login_cubit.dart' as _i18;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i9;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i39;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i41;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i30;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i37;
import 'injectable_module.dart' as _i56;
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
    gh.factory<_i6.NotificationRepo>(
        () => _i7.NotificationData(objectBox: gh<_i3.ObjectBox>()));
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
    gh.lazySingleton<_i8.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i9.NotificationScreenCubit>(
        () => _i9.NotificationScreenCubit(gh<_i6.NotificationRepo>()));
    gh.factory<_i10.AuthRepo>(() => _i11.AuthData(gh<_i8.Dio>()));
    gh.factory<_i12.ListingsRepo>(() => _i13.ListingsData(dio: gh<_i8.Dio>()));
    gh.factory<_i14.AgentRepo>(() => _i15.AgentData(dio: gh<_i8.Dio>()));
    gh.factory<_i16.ActivityRepo>(() => _i17.ActivityData(dio: gh<_i8.Dio>()));
    gh.factory<_i18.LoginCubit>(() => _i18.LoginCubit(gh<_i10.AuthRepo>()));
    gh.factory<_i19.ExplorerRepo>(() => _i20.ExplorerData(dio: gh<_i8.Dio>()));
    gh.factory<_i21.DealsRepo>(() => _i22.DealData(dio: gh<_i8.Dio>()));
    gh.factory<_i23.LeadRepo>(() => _i24.LeadData(dio: gh<_i8.Dio>()));
    gh.factory<_i25.LinkusRepo>(() => _i26.LinkusData(dio: gh<_i8.Dio>()));
    gh.factory<_i27.TicketRepo>(() => _i28.TicketData(dio: gh<_i8.Dio>()));
    gh.factoryParam<_i29.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i29.ChatCubit(
          gh<_i27.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i30.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i30.TicketDetailsCubit(
          gh<_i27.TicketRepo>(),
          ticketId,
        ));
    gh.factoryParam<_i31.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i31.LeadDetailCubit(
          gh<_i23.LeadRepo>(),
          leadId,
          gh<_i19.ExplorerRepo>(),
        ));
    gh.factoryParam<_i32.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i32.ListingDetailCubit(
          gh<_i12.ListingsRepo>(),
          id,
        ));
    gh.singleton<_i33.ActivityCubit>(
        () => _i33.ActivityCubit(gh<_i16.ActivityRepo>()));
    gh.factoryParam<_i34.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i34.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i21.DealsRepo>(),
        ));
    gh.factoryParam<_i35.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i35.DealDetailsCubit(
          gh<_i21.DealsRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i23.LeadRepo>(),
          dealId,
        ));
    gh.singleton<_i36.CallBloc>(() => _i36.CallBloc(
          gh<_i16.ActivityRepo>(),
          gh<_i25.LinkusRepo>(),
        ));
    gh.factory<_i37.TicketsScreenCubit>(
        () => _i37.TicketsScreenCubit(gh<_i27.TicketRepo>()));
    gh.factory<_i38.AddPocketListingCubit>(() => _i38.AddPocketListingCubit(
          gh<_i23.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i19.ExplorerRepo>(),
        ));
    gh.factoryParam<_i39.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i39.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i19.ExplorerRepo>(),
        ));
    gh.factory<_i40.DealsCubit>(() => _i40.DealsCubit(gh<_i21.DealsRepo>()));
    gh.factoryParam<_i41.TaskDetailCubit, String, _i42.Activity?>((
      taskId,
      activity,
    ) =>
        _i41.TaskDetailCubit(
          gh<_i16.ActivityRepo>(),
          taskId,
          activity,
          gh<_i23.LeadRepo>(),
          gh<_i14.AgentRepo>(),
          gh<_i19.ExplorerRepo>(),
        ));
    gh.factory<_i43.AddTaskCubit>(() => _i43.AddTaskCubit(
          gh<_i16.ActivityRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i14.AgentRepo>(),
        ));
    gh.factory<_i44.HomeCubit>(() => _i44.HomeCubit(
          gh<_i16.ActivityRepo>(),
          gh<_i23.LeadRepo>(),
        ));
    gh.factory<_i45.AddTicketCubit>(() => _i45.AddTicketCubit(
          gh<_i27.TicketRepo>(),
          gh<_i21.DealsRepo>(),
          gh<_i23.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i14.AgentRepo>(),
        ));
    gh.singleton<_i46.AuthBloc>(() => _i46.AuthBloc(
          gh<_i10.AuthRepo>(),
          gh<_i6.NotificationRepo>(),
          gh<_i16.ActivityRepo>(),
        ));
    gh.factoryParam<_i47.AddListingCubit, bool, _i48.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i47.AddListingCubit(
          gh<_i23.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i21.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factory<_i49.LeadsCubit>(() => _i49.LeadsCubit(
          gh<_i23.LeadRepo>(),
          gh<_i25.LinkusRepo>(),
        ));
    gh.factory<_i50.ExplorerScreenCubit>(() => _i50.ExplorerScreenCubit(
          gh<_i19.ExplorerRepo>(),
          gh<_i12.ListingsRepo>(),
        ));
    gh.factory<_i51.LeadsListExplorerCubit>(() => _i51.LeadsListExplorerCubit(
          gh<_i19.ExplorerRepo>(),
          gh<_i12.ListingsRepo>(),
        ));
    gh.factoryParam<_i52.AddDealCubit, _i48.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i52.AddDealCubit(
          gh<_i12.ListingsRepo>(),
          gh<_i23.LeadRepo>(),
          gh<_i21.DealsRepo>(),
          gh<_i14.AgentRepo>(),
          deal,
        ));
    gh.factory<_i53.ListingsCubit>(() => _i53.ListingsCubit(
          gh<_i12.ListingsRepo>(),
          gh<_i19.ExplorerRepo>(),
          gh<_i14.AgentRepo>(),
        ));
    gh.factory<_i54.AddLeadCubit>(() => _i54.AddLeadCubit(gh<_i23.LeadRepo>()));
    gh.factory<_i55.CallFeedbackCubit>(
        () => _i55.CallFeedbackCubit(gh<_i23.LeadRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i56.RegisterModules {}
