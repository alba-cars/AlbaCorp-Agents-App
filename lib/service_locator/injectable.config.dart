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

import '../app/activity_cubit/activity_cubit.dart' as _i37;
import '../app/auth_bloc/auth_bloc.dart' as _i42;
import '../app/call_bloc/call_bloc.dart' as _i25;
import '../data/remote_data/activity_data.dart' as _i18;
import '../data/remote_data/agent_data.dart' as _i22;
import '../data/remote_data/auth_data.dart' as _i24;
import '../data/remote_data/deals_data.dart' as _i27;
import '../data/remote_data/explorer_data.dart' as _i7;
import '../data/remote_data/lead_data.dart' as _i9;
import '../data/remote_data/listings_data.dart' as _i12;
import '../data/remote_data/ticket_data.dart' as _i15;
import '../data/repository/activity_repo.dart' as _i17;
import '../data/repository/agent_repo.dart' as _i21;
import '../data/repository/auth_repo.dart' as _i23;
import '../data/repository/deals_repo.dart' as _i26;
import '../data/repository/explorer_repo.dart' as _i6;
import '../data/repository/lead_repo.dart' as _i8;
import '../data/repository/listings_repo.dart' as _i11;
import '../data/repository/ticket_repo.dart' as _i14;
import '../model/activity_model.dart' as _i35;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i38;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i19;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i39;
import '../view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart'
    as _i20;
import '../view/add_task_screen/cubit/add_task_cubit.dart' as _i40;
import '../view/add_ticket_screen/cubit/add_ticket_cubit.dart' as _i41;
import '../view/chat_screen/cubit/chat_cubit.dart' as _i3;
import '../view/deal_add_document_screen/cubit/deal_add_document_cubit.dart'
    as _i43;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i44;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i45;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i28;
import '../view/home_screen/cubit/home_cubit.dart' as _i29;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i30;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i10;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i31;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i32;
import '../view/login/cubit/login_cubit.dart' as _i33;
import '../view/property_card_details/cubit/property_card_details_cubit.dart'
    as _i13;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i34;
import '../view/ticket_detail_screen/cubit/ticket_details_cubit.dart' as _i36;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i16;
import 'injectable_module.dart' as _i46;

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
    gh.factory<_i3.ChatCubit>(() => _i3.ChatCubit());
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
      () => registerModules.baseProdUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Prod},
    );
    gh.factory<String>(
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.lazySingleton<_i5.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i6.ExplorerRepo>(() => _i7.ExplorerData(dio: gh<_i5.Dio>()));
    gh.factory<_i8.LeadRepo>(() => _i9.LeadData(dio: gh<_i5.Dio>()));
    gh.factory<_i10.LeadsCubit>(() => _i10.LeadsCubit(gh<_i8.LeadRepo>()));
    gh.factory<_i11.ListingsRepo>(() => _i12.ListingsData(dio: gh<_i5.Dio>()));
    gh.factoryParam<_i13.PropertyCardDetailsCubit, String, dynamic>((
      propertyCardId,
      _,
    ) =>
        _i13.PropertyCardDetailsCubit(
          propertyCardId,
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i14.TicketRepo>(() => _i15.TicketData(dio: gh<_i5.Dio>()));
    gh.factory<_i16.TicketsScreenCubit>(
        () => _i16.TicketsScreenCubit(gh<_i14.TicketRepo>()));
    gh.factory<_i17.ActivityRepo>(() => _i18.ActivityData(dio: gh<_i5.Dio>()));
    gh.factory<_i19.AddLeadCubit>(() => _i19.AddLeadCubit(gh<_i8.LeadRepo>()));
    gh.factory<_i20.AddPocketListingCubit>(() => _i20.AddPocketListingCubit(
          gh<_i8.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i21.AgentRepo>(() => _i22.AgentData(dio: gh<_i5.Dio>()));
    gh.factory<_i23.AuthRepo>(() => _i24.AuthData(gh<_i5.Dio>()));
    gh.singleton<_i25.CallBloc>(_i25.CallBloc(gh<_i17.ActivityRepo>()));
    gh.factory<_i26.DealsRepo>(() => _i27.DealData(dio: gh<_i5.Dio>()));
    gh.factory<_i28.ExplorerScreenCubit>(() => _i28.ExplorerScreenCubit(
          gh<_i6.ExplorerRepo>(),
          gh<_i11.ListingsRepo>(),
        ));
    gh.factory<_i29.HomeCubit>(() => _i29.HomeCubit(
          gh<_i17.ActivityRepo>(),
          gh<_i8.LeadRepo>(),
        ));
    gh.factoryParam<_i30.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i30.LeadDetailCubit(
          gh<_i8.LeadRepo>(),
          leadId,
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factoryParam<_i31.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i31.ListingDetailCubit(
          gh<_i11.ListingsRepo>(),
          id,
        ));
    gh.factory<_i32.ListingsCubit>(() => _i32.ListingsCubit(
          gh<_i11.ListingsRepo>(),
          gh<_i6.ExplorerRepo>(),
        ));
    gh.factory<_i33.LoginCubit>(() => _i33.LoginCubit(gh<_i23.AuthRepo>()));
    gh.factoryParam<_i34.TaskDetailCubit, String, _i35.Activity?>((
      taskId,
      activity,
    ) =>
        _i34.TaskDetailCubit(
          gh<_i17.ActivityRepo>(),
          taskId,
          activity,
          gh<_i8.LeadRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.factoryParam<_i36.TicketDetailsCubit, String, dynamic>((
      ticketId,
      _,
    ) =>
        _i36.TicketDetailsCubit(
          gh<_i14.TicketRepo>(),
          ticketId,
        ));
    gh.singleton<_i37.ActivityCubit>(
        _i37.ActivityCubit(gh<_i17.ActivityRepo>()));
    gh.factory<_i38.AddDealCubit>(() => _i38.AddDealCubit(
          gh<_i11.ListingsRepo>(),
          gh<_i8.LeadRepo>(),
          gh<_i26.DealsRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.factory<_i39.AddListingCubit>(() => _i39.AddListingCubit(
          gh<_i8.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i26.DealsRepo>(),
        ));
    gh.factory<_i40.AddTaskCubit>(() => _i40.AddTaskCubit(
          gh<_i17.ActivityRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.factory<_i41.AddTicketCubit>(() => _i41.AddTicketCubit(
          gh<_i14.TicketRepo>(),
          gh<_i26.DealsRepo>(),
          gh<_i8.LeadRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i21.AgentRepo>(),
        ));
    gh.singleton<_i42.AuthBloc>(_i42.AuthBloc(gh<_i23.AuthRepo>()));
    gh.factoryParam<_i43.DealAddDocumentCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i43.DealAddDocumentCubit(
          dealId,
          gh<_i26.DealsRepo>(),
        ));
    gh.factoryParam<_i44.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i44.DealDetailsCubit(
          gh<_i26.DealsRepo>(),
          gh<_i11.ListingsRepo>(),
          gh<_i8.LeadRepo>(),
          dealId,
        ));
    gh.factory<_i45.DealsCubit>(() => _i45.DealsCubit(gh<_i26.DealsRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i46.RegisterModules {}
