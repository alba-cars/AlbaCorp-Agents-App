// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../app/activity_cubit/activity_cubit.dart' as _i39;
import '../app/auth_bloc/auth_bloc.dart' as _i45;
import '../app/call_bloc/call_bloc.dart' as _i25;
import '../data/remote_data/activity_data.dart' as _i18;
import '../data/remote_data/agent_data.dart' as _i22;
import '../data/remote_data/auth_data.dart' as _i24;
import '../data/remote_data/deals_data.dart' as _i28;
import '../data/remote_data/explorer_data.dart' as _i6;
import '../data/remote_data/lead_data.dart' as _i8;
import '../data/remote_data/linkus_data.dart' as _i10;
import '../data/remote_data/listings_data.dart' as _i12;
import '../data/remote_data/ticket_data.dart' as _i15;
import '../data/repository/activity_repo.dart' as _i17;
import '../data/repository/agent_repo.dart' as _i21;
import '../data/repository/auth_repo.dart' as _i23;
import '../data/repository/deals_repo.dart' as _i27;
import '../data/repository/explorer_repo.dart' as _i5;
import '../data/repository/lead_repo.dart' as _i7;
import '../data/repository/linkus_repo.dart' as _i9;
import '../data/repository/listings_repo.dart' as _i11;
import '../data/repository/ticket_repo.dart' as _i14;
import '../model/activity_model.dart' as _i37;
import '../model/deal_model.dart' as _i41;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i40;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i19;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i42;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i20;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i43;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i44;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i26;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i46;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i47;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i48;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i29;
import '../view/home_screen/cubit/home_cubit.dart' as _i30;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i31;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i32;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i33;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i34;
import '../view/login/cubit/login_cubit.dart' as _i35;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i13;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i36;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i38;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i16;
import 'injectable_module.dart' as _i49;

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
    await gh.factoryAsync<_i3.SharedPreferences>(
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
    gh.lazySingleton<_i4.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i5.ExplorerRepo>(() => _i6.ExplorerData(dio: gh<_i4.Dio>()));
    gh.factory<_i7.LeadRepo>(() => _i8.LeadData(dio: gh<_i4.Dio>()));
    gh.factory<_i9.LinkusRepo>(() => _i10.LinkusData(dio: gh<_i4.Dio>()));
    gh.factory<_i11.ListingsRepo>(() => _i12.ListingsData(dio: gh<_i4.Dio>()));
    gh.factoryParam<_i13.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i13.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i5.ExplorerRepo>(),
        ));
    gh.factory<_i14.TicketRepo>(() => _i15.TicketData(dio: gh<_i4.Dio>()));
    gh.factory<_i16.TicketsScreenCubit>(
        () => _i16.TicketsScreenCubit(gh<_i14.TicketRepo>()));
    gh.factory<_i17.ActivityRepo>(() => _i18.ActivityData(dio: gh<_i4.Dio>()));
    gh.factory<_i19.AddLeadCubit>(() => _i19.AddLeadCubit(gh<_i7.LeadRepo>()));
    gh.factory<_i20.AddPocketListingCubit>(() => _i20.AddPocketListingCubit(
          gh<_i7.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i5.ExplorerRepo>(),
        ));
    gh.factory<_i21.AgentRepo>(() => _i22.AgentData(dio: gh<_i4.Dio>()));
    gh.factory<_i23.AuthRepo>(() => _i24.AuthData(gh<_i4.Dio>()));
    gh.singleton<_i25.CallBloc>(_i25.CallBloc(
      gh<_i17.ActivityRepo>(),
      gh<_i9.LinkusRepo>(),
    ));
    gh.factoryParam<_i26.ChatCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i26.ChatCubit(
          gh<_i14.TicketRepo>(),
          ticketId,
        ));
    gh.factory<_i27.DealsRepo>(() => _i28.DealData(dio: gh<_i4.Dio>()));
    gh.factory<_i29.ExplorerScreenCubit>(() => _i29.ExplorerScreenCubit(
          gh<_i5.ExplorerRepo>(),
          gh<_i11.ListingsRepo>(),
        ));
    gh.factory<_i30.HomeCubit>(() => _i30.HomeCubit(
          gh<_i17.ActivityRepo>(),
          gh<_i7.LeadRepo>(),
        ));
    gh.factoryParam<_i31.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i31.LeadDetailCubit(
          gh<_i7.LeadRepo>(),
          leadId,
          gh<_i5.ExplorerRepo>(),
        ));
    gh.factory<_i32.LeadsCubit>(() => _i32.LeadsCubit(
          gh<_i7.LeadRepo>(),
          gh<_i9.LinkusRepo>(),
        ));
    gh.factoryParam<_i33.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i33.ListingDetailCubit(
          gh<_i11.ListingsRepo>(),
          id,
        ));
    gh.factory<_i34.ListingsCubit>(() => _i34.ListingsCubit(
          gh<_i11.ListingsRepo>(),
          gh<_i5.ExplorerRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.factory<_i35.LoginCubit>(() => _i35.LoginCubit(gh<_i23.AuthRepo>()));
    gh.factoryParam<_i36.TaskDetailCubit, String, _i37.Activity?>((
      taskId,
      activity,
    ) =>
        _i36.TaskDetailCubit(
          gh<_i17.ActivityRepo>(),
          taskId,
          activity,
          gh<_i7.LeadRepo>(),
          gh<_i21.AgentRepo>(),
          gh<_i5.ExplorerRepo>(),
        ));
    gh.factoryParam<_i38.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i38.TicketDetailsCubit(
          gh<_i14.TicketRepo>(),
          ticketId,
        ));
    gh.singleton<_i39.ActivityCubit>(
        _i39.ActivityCubit(gh<_i17.ActivityRepo>()));
    gh.factoryParam<_i40.AddDealCubit, _i41.Deal?, dynamic>((
      deal,
      _,
    ) =>
        _i40.AddDealCubit(
          gh<_i11.ListingsRepo>(),
          gh<_i7.LeadRepo>(),
          gh<_i27.DealsRepo>(),
          gh<_i21.AgentRepo>(),
          deal,
        ));
    gh.factoryParam<_i42.AddListingCubit, bool, _i41.Deal?>((
      _isEdit,
      _deal,
    ) =>
        _i42.AddListingCubit(
          gh<_i7.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i27.DealsRepo>(),
          _isEdit,
          _deal,
        ));
    gh.factory<_i43.AddTaskCubit>(() => _i43.AddTaskCubit(
          gh<_i17.ActivityRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.factory<_i44.AddTicketCubit>(() => _i44.AddTicketCubit(
          gh<_i14.TicketRepo>(),
          gh<_i27.DealsRepo>(),
          gh<_i7.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.singleton<_i45.AuthBloc>(_i45.AuthBloc(gh<_i23.AuthRepo>()));
    gh.factoryParam<_i46.DealAddDocumentCubit, String, String>((
      dealId,
      userId,
    ) =>
        _i46.DealAddDocumentCubit(
          dealId,
          userId,
          gh<_i27.DealsRepo>(),
        ));
    gh.factoryParam<_i47.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i47.DealDetailsCubit(
          gh<_i27.DealsRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i7.LeadRepo>(),
          dealId,
        ));
    gh.factory<_i48.DealsCubit>(() => _i48.DealsCubit(gh<_i27.DealsRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i49.RegisterModules {}
