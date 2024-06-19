// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../app/activity_cubit/activity_cubit.dart' as _i41;
import '../app/auth_bloc/auth_bloc.dart' as _i47;
import '../app/call_bloc/call_bloc.dart' as _i26;
import '../app/list_state_cubit/list_state_cubit.dart' as _i3;
import '../data/remote_data/activity_data.dart' as _i19;
import '../data/remote_data/agent_data.dart' as _i23;
import '../data/remote_data/auth_data.dart' as _i25;
import '../data/remote_data/deals_data.dart' as _i29;
import '../data/remote_data/explorer_data.dart' as _i7;
import '../data/remote_data/lead_data.dart' as _i9;
import '../data/remote_data/linkus_data.dart' as _i11;
import '../data/remote_data/listings_data.dart' as _i13;
import '../data/remote_data/ticket_data.dart' as _i16;
import '../data/repository/activity_repo.dart' as _i18;
import '../data/repository/agent_repo.dart' as _i22;
import '../data/repository/auth_repo.dart' as _i24;
import '../data/repository/deals_repo.dart' as _i28;
import '../data/repository/explorer_repo.dart' as _i6;
import '../data/repository/lead_repo.dart' as _i8;
import '../data/repository/linkus_repo.dart' as _i10;
import '../data/repository/listings_repo.dart' as _i12;
import '../data/repository/ticket_repo.dart' as _i15;
import '../model/activity_model.dart' as _i39;
import '../model/deal_model.dart' as _i43;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i42;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i20;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i44;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i21;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i45;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i46;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i27;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i48;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i49;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i50;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i30;
import '../view/home_screen/cubit/home_cubit.dart' as _i31;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i32;
import '../view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart'
    as _i34;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i33;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i35;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i36;
import '../view/login/cubit/login_cubit.dart' as _i37;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i14;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i38;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i40;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i17;
import 'injectable_module.dart' as _i51;

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
      () => registerModules.awsProdBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Prod},
    );
    gh.factory<String>(
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.factory<String>(
      () => registerModules.baseProdUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Prod},
    );
    gh.lazySingleton<_i5.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i6.ExplorerRepo>(() => _i7.ExplorerData(dio: gh<_i5.Dio>()));
    gh.factory<_i8.LeadRepo>(() => _i9.LeadData(dio: gh<_i5.Dio>()));
    gh.factory<_i10.LinkusRepo>(() => _i11.LinkusData(dio: gh<_i5.Dio>()));
    gh.factory<_i12.ListingsRepo>(() => _i13.ListingsData(dio: gh<_i5.Dio>()));
    gh.factoryParam<_i14.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i14.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i15.TicketRepo>(() => _i16.TicketData(dio: gh<_i5.Dio>()));
    gh.factory<_i17.TicketsScreenCubit>(
        () => _i17.TicketsScreenCubit(gh<_i15.TicketRepo>()));
    gh.factory<_i18.ActivityRepo>(() => _i19.ActivityData(dio: gh<_i5.Dio>()));
    gh.factory<_i20.AddLeadCubit>(() => _i20.AddLeadCubit(gh<_i8.LeadRepo>()));
    gh.factory<_i21.AddPocketListingCubit>(() => _i21.AddPocketListingCubit(
          gh<_i8.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i22.AgentRepo>(() => _i23.AgentData(dio: gh<_i5.Dio>()));
    gh.factory<_i24.AuthRepo>(() => _i25.AuthData(gh<_i5.Dio>()));
    gh.singleton<_i26.CallBloc>(_i26.CallBloc(
      gh<_i18.ActivityRepo>(),
      gh<_i10.LinkusRepo>(),
    ));
    gh.factoryParam<_i27.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i27.ChatCubit(
          gh<_i15.TicketRepo>(),
          ticketId,
        ));
    gh.factory<_i28.DealsRepo>(() => _i29.DealData(dio: gh<_i5.Dio>()));
    gh.factory<_i30.ExplorerScreenCubit>(() => _i30.ExplorerScreenCubit(
          gh<_i6.ExplorerRepo>(),
          gh<_i12.ListingsRepo>(),
        ));
    gh.factory<_i31.HomeCubit>(() => _i31.HomeCubit(
          gh<_i18.ActivityRepo>(),
          gh<_i8.LeadRepo>(),
        ));
    gh.factoryParam<_i32.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i32.LeadDetailCubit(
          gh<_i8.LeadRepo>(),
          leadId,
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i33.LeadsCubit>(() => _i33.LeadsCubit(
          gh<_i8.LeadRepo>(),
          gh<_i10.LinkusRepo>(),
        ));
    gh.factory<_i34.LeadsListExplorerCubit>(() => _i34.LeadsListExplorerCubit(
          gh<_i6.ExplorerRepo>(),
          gh<_i12.ListingsRepo>(),
        ));
    gh.factoryParam<_i35.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i35.ListingDetailCubit(
          gh<_i12.ListingsRepo>(),
          id,
        ));
    gh.factory<_i36.ListingsCubit>(() => _i36.ListingsCubit(
          gh<_i12.ListingsRepo>(),
          gh<_i6.ExplorerRepo>(),
          gh<_i22.AgentRepo>(),
        ));
    gh.factory<_i37.LoginCubit>(() => _i37.LoginCubit(gh<_i24.AuthRepo>()));
    gh.factoryParam<_i38.TaskDetailCubit, String, _i39.Activity?>((
      taskId,
      activity,
    ) =>
        _i38.TaskDetailCubit(
          gh<_i18.ActivityRepo>(),
          taskId,
          activity,
          gh<_i8.LeadRepo>(),
          gh<_i22.AgentRepo>(),
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factoryParam<_i40.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i40.TicketDetailsCubit(
          gh<_i15.TicketRepo>(),
          ticketId,
        ));
    gh.singleton<_i41.ActivityCubit>(
        _i41.ActivityCubit(gh<_i18.ActivityRepo>()));
    gh.factoryParam<_i42.AddDealCubit, _i43.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i42.AddDealCubit(
          gh<_i12.ListingsRepo>(),
          gh<_i8.LeadRepo>(),
          gh<_i28.DealsRepo>(),
          gh<_i22.AgentRepo>(),
          deal,
        ));
    gh.factoryParam<_i44.AddListingCubit, bool, _i43.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i44.AddListingCubit(
          gh<_i8.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i28.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factory<_i45.AddTaskCubit>(() => _i45.AddTaskCubit(
          gh<_i18.ActivityRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i22.AgentRepo>(),
        ));
    gh.factory<_i46.AddTicketCubit>(() => _i46.AddTicketCubit(
          gh<_i15.TicketRepo>(),
          gh<_i28.DealsRepo>(),
          gh<_i8.LeadRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i22.AgentRepo>(),
        ));
    gh.singleton<_i47.AuthBloc>(_i47.AuthBloc(gh<_i24.AuthRepo>()));
    gh.factoryParam<_i48.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i48.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i28.DealsRepo>(),
        ));
    gh.factoryParam<_i49.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i49.DealDetailsCubit(
          gh<_i28.DealsRepo>(),
          gh<_i12.ListingsRepo>(),
          gh<_i8.LeadRepo>(),
          dealId,
        ));
    gh.factory<_i50.DealsCubit>(() => _i50.DealsCubit(gh<_i28.DealsRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i51.RegisterModules {}
