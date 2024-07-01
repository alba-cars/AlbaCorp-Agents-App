// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../app/activity_cubit/activity_cubit.dart' as _i46;
import '../app/auth_bloc/auth_bloc.dart' as _i52;
import '../app/call_bloc/call_bloc.dart' as _i30;
import '../app/list_state_cubit/list_state_cubit.dart' as _i3;
import '../data/objectbox/repo_impl/notification_data.dart' as _i16;
import '../data/remote_data/activity_data.dart' as _i23;
import '../data/remote_data/agent_data.dart' as _i27;
import '../data/remote_data/auth_data.dart' as _i29;
import '../data/remote_data/deals_data.dart' as _i34;
import '../data/remote_data/explorer_data.dart' as _i8;
import '../data/remote_data/lead_data.dart' as _i10;
import '../data/remote_data/linkus_data.dart' as _i12;
import '../data/remote_data/listings_data.dart' as _i14;
import '../data/remote_data/ticket_data.dart' as _i20;
import '../data/repository/activity_repo.dart' as _i22;
import '../data/repository/agent_repo.dart' as _i26;
import '../data/repository/auth_repo.dart' as _i28;
import '../data/repository/deals_repo.dart' as _i33;
import '../data/repository/explorer_repo.dart' as _i7;
import '../data/repository/lead_repo.dart' as _i9;
import '../data/repository/linkus_repo.dart' as _i11;
import '../data/repository/listings_repo.dart' as _i13;
import '../data/repository/notification_repo.dart' as _i15;
import '../data/repository/ticket_repo.dart' as _i19;
import '../model/activity_model.dart' as _i44;
import '../model/deal_model.dart' as _i48;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i47;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i24;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i49;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i25;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i50;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i51;
import '../view/call_feedback_screen/cubit/call_feedback_cubit.dart' as _i31;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i32;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i53;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i54;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i55;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i35;
import '../view/home_screen/cubit/home_cubit.dart' as _i36;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i37;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i39;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i38;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i40;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i41;
import '../view/login/cubit/login_cubit.dart' as _i42;
import '../view/notifications_screen/cubit/notification_screen_cubit.dart'
    as _i17;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i18;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i43;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i45;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i21;
import 'injectable_module.dart' as _i56;
import 'objectbox.dart' as _i4;

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
    gh.lazySingleton<_i3.ListStateCubit>(() => _i3.ListStateCubit());
    await gh.factoryAsync<_i4.ObjectBox>(
      () => registerModules.getStore(),
      preResolve: true,
    );
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModules.getSharedPreference(),
      preResolve: true,
    );
    gh.factory<String>(
      () => registerModules.baseProdUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Prod},
    );
    gh.factory<String>(
      () => registerModules.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Stage},
    );
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
    gh.lazySingleton<_i6.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.ExplorerRepo>(() => _i8.ExplorerData(dio: gh<_i6.Dio>()));
    gh.factory<_i9.LeadRepo>(() => _i10.LeadData(dio: gh<_i6.Dio>()));
    gh.factory<_i11.LinkusRepo>(() => _i12.LinkusData(dio: gh<_i6.Dio>()));
    gh.factory<_i13.ListingsRepo>(() => _i14.ListingsData(dio: gh<_i6.Dio>()));
    gh.factory<_i15.NotificationRepo>(
        () => _i16.NotificationData(objectBox: gh<_i4.ObjectBox>()));
    gh.factory<_i17.NotificationScreenCubit>(
        () => _i17.NotificationScreenCubit(gh<_i15.NotificationRepo>()));
    gh.factoryParam<_i18.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i18.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i7.ExplorerRepo>(),
        ));
    gh.factory<_i19.TicketRepo>(() => _i20.TicketData(dio: gh<_i6.Dio>()));
    gh.factory<_i21.TicketsScreenCubit>(
        () => _i21.TicketsScreenCubit(gh<_i19.TicketRepo>()));
    gh.factory<_i22.ActivityRepo>(() => _i23.ActivityData(dio: gh<_i6.Dio>()));
    gh.factory<_i24.AddLeadCubit>(() => _i24.AddLeadCubit(gh<_i9.LeadRepo>()));
    gh.factory<_i25.AddPocketListingCubit>(() => _i25.AddPocketListingCubit(
          gh<_i9.LeadRepo>(),
          gh<_i13.ListingsRepo>(),
          gh<_i7.ExplorerRepo>(),
        ));
    gh.factory<_i26.AgentRepo>(() => _i27.AgentData(dio: gh<_i6.Dio>()));
    gh.factory<_i28.AuthRepo>(() => _i29.AuthData(gh<_i6.Dio>()));
    gh.singleton<_i30.CallBloc>(_i30.CallBloc(
      gh<_i22.ActivityRepo>(),
      gh<_i11.LinkusRepo>(),
    ));
    gh.factory<_i31.CallFeedbackCubit>(
        () => _i31.CallFeedbackCubit(gh<_i9.LeadRepo>()));
    gh.factoryParam<_i32.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i32.ChatCubit(
          gh<_i19.TicketRepo>(),
          ticketId,
        ));
    gh.factory<_i33.DealsRepo>(() => _i34.DealData(dio: gh<_i6.Dio>()));
    gh.factory<_i35.ExplorerScreenCubit>(() => _i35.ExplorerScreenCubit(
          gh<_i7.ExplorerRepo>(),
          gh<_i13.ListingsRepo>(),
        ));
    gh.factory<_i36.HomeCubit>(() => _i36.HomeCubit(
          gh<_i22.ActivityRepo>(),
          gh<_i9.LeadRepo>(),
        ));
    gh.factoryParam<_i37.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i37.LeadDetailCubit(
          gh<_i9.LeadRepo>(),
          leadId,
          gh<_i7.ExplorerRepo>(),
        ));
    gh.factory<_i38.LeadsCubit>(() => _i38.LeadsCubit(
          gh<_i9.LeadRepo>(),
          gh<_i11.LinkusRepo>(),
        ));
    gh.factory<_i39.LeadsListExplorerCubit>(() => _i39.LeadsListExplorerCubit(
          gh<_i7.ExplorerRepo>(),
          gh<_i13.ListingsRepo>(),
        ));
    gh.factoryParam<_i40.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i40.ListingDetailCubit(
          gh<_i13.ListingsRepo>(),
          id,
        ));
    gh.factory<_i41.ListingsCubit>(() => _i41.ListingsCubit(
          gh<_i13.ListingsRepo>(),
          gh<_i7.ExplorerRepo>(),
          gh<_i26.AgentRepo>(),
        ));
    gh.factory<_i42.LoginCubit>(() => _i42.LoginCubit(gh<_i28.AuthRepo>()));
    gh.factoryParam<_i43.TaskDetailCubit, String, _i44.Activity?>((
      taskId,
      activity,
    ) =>
        _i43.TaskDetailCubit(
          gh<_i22.ActivityRepo>(),
          taskId,
          activity,
          gh<_i9.LeadRepo>(),
          gh<_i26.AgentRepo>(),
          gh<_i7.ExplorerRepo>(),
        ));
    gh.factoryParam<_i45.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i45.TicketDetailsCubit(
          gh<_i19.TicketRepo>(),
          ticketId,
        ));
    gh.singleton<_i46.ActivityCubit>(
        _i46.ActivityCubit(gh<_i22.ActivityRepo>()));
    gh.factoryParam<_i47.AddDealCubit, _i48.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i47.AddDealCubit(
          gh<_i13.ListingsRepo>(),
          gh<_i9.LeadRepo>(),
          gh<_i33.DealsRepo>(),
          gh<_i26.AgentRepo>(),
          deal,
        ));
    gh.factoryParam<_i49.AddListingCubit, bool, _i48.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i49.AddListingCubit(
          gh<_i9.LeadRepo>(),
          gh<_i13.ListingsRepo>(),
          gh<_i33.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factory<_i50.AddTaskCubit>(() => _i50.AddTaskCubit(
          gh<_i22.ActivityRepo>(),
          gh<_i13.ListingsRepo>(),
          gh<_i26.AgentRepo>(),
        ));
    gh.factory<_i51.AddTicketCubit>(() => _i51.AddTicketCubit(
          gh<_i19.TicketRepo>(),
          gh<_i33.DealsRepo>(),
          gh<_i9.LeadRepo>(),
          gh<_i13.ListingsRepo>(),
          gh<_i26.AgentRepo>(),
        ));
    gh.singleton<_i52.AuthBloc>(_i52.AuthBloc(
      gh<_i28.AuthRepo>(),
      gh<_i15.NotificationRepo>(),
      gh<_i22.ActivityRepo>(),
    ));
    gh.factoryParam<_i53.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i53.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i33.DealsRepo>(),
        ));
    gh.factoryParam<_i54.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i54.DealDetailsCubit(
          gh<_i33.DealsRepo>(),
          gh<_i13.ListingsRepo>(),
          gh<_i9.LeadRepo>(),
          dealId,
        ));
    gh.factory<_i55.DealsCubit>(() => _i55.DealsCubit(gh<_i33.DealsRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i56.RegisterModules {}
