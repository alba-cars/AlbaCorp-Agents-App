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
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../app/activity_cubit/activity_cubit.dart' as _i30;
import '../app/auth_bloc/auth_bloc.dart' as _i32;
import '../app/call_bloc/call_bloc.dart' as _i20;
import '../data/remote_data/activity_data.dart' as _i13;
import '../data/remote_data/agent_data.dart' as _i17;
import '../data/remote_data/auth_data.dart' as _i19;
import '../data/remote_data/deals_data.dart' as _i22;
import '../data/remote_data/lead_data.dart' as _i8;
import '../data/remote_data/listings_data.dart' as _i11;
import '../data/repository/activity_repo.dart' as _i12;
import '../data/repository/agent_repo.dart' as _i16;
import '../data/repository/auth_repo.dart' as _i18;
import '../data/repository/deals_repo.dart' as _i21;
import '../data/repository/lead_repo.dart' as _i7;
import '../data/repository/listings_repo.dart' as _i10;
import '../model/activity_model.dart' as _i29;
import '../view/add_deal_screen/cubit/add_deal_cubit.dart' as _i31;
import '../view/add_lead_screen/cubit/add_lead_cubit.dart' as _i14;
import '../view/add_listing_screen/cubit/add_listing_cubit.dart' as _i15;
import '../view/deal_details_screen/cubit/deal_details_cubit.dart' as _i33;
import '../view/deals_screen/cubit/deals_cubit.dart' as _i34;
import '../view/explorer_screen/cubit/explorer_screen_cubit.dart' as _i3;
import '../view/home_screen/cubit/home_cubit.dart' as _i23;
import '../view/lead_detail_screen/cubit/lead_detail_cubit.dart' as _i24;
import '../view/leads_screen/cubit/leads_cubit.dart' as _i9;
import '../view/listing_detail_screen/cubit/listing_detail_cubit.dart' as _i25;
import '../view/listings_screen/cubit/listings_cubit.dart' as _i26;
import '../view/login/cubit/login_cubit.dart' as _i27;
import '../view/task_detail_screen/cubit/task_detail_cubit.dart' as _i28;
import '../view/tickets_screen/cubit/tickets_screen_cubit.dart' as _i5;
import 'injectable_module.dart' as _i35;

const String _Prod = 'Prod';
const String _Stage = 'Stage';

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
    gh.factory<_i3.ExplorerScreenCubit>(() => _i3.ExplorerScreenCubit());
    await gh.factoryAsync<_i4.SharedPreferences>(
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
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.factory<String>(
      () => registerModules.awsProdBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Prod},
    );
    gh.factory<_i5.TicketsScreenCubit>(() => _i5.TicketsScreenCubit());
    gh.lazySingleton<_i6.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.LeadRepo>(() => _i8.LeadData(dio: gh<_i6.Dio>()));
    gh.factory<_i9.LeadsCubit>(() => _i9.LeadsCubit(gh<_i7.LeadRepo>()));
    gh.factory<_i10.ListingsRepo>(() => _i11.ListingsData(dio: gh<_i6.Dio>()));
    gh.factory<_i12.ActivityRepo>(() => _i13.ActivityData(dio: gh<_i6.Dio>()));
    gh.factory<_i14.AddLeadCubit>(() => _i14.AddLeadCubit(gh<_i7.LeadRepo>()));
    gh.factory<_i15.AddListingCubit>(() => _i15.AddListingCubit(
          gh<_i7.LeadRepo>(),
          gh<_i10.ListingsRepo>(),
        ));
    gh.factory<_i16.AgentRepo>(() => _i17.AgentData(dio: gh<_i6.Dio>()));
    gh.factory<_i18.AuthRepo>(() => _i19.AuthData(gh<_i6.Dio>()));
    gh.singleton<_i20.CallBloc>(_i20.CallBloc(gh<_i12.ActivityRepo>()));
    gh.factory<_i21.DealsRepo>(() => _i22.DealData(dio: gh<_i6.Dio>()));
    gh.factory<_i23.HomeCubit>(() => _i23.HomeCubit(gh<_i12.ActivityRepo>()));
    gh.factoryParam<_i24.LeadDetailCubit, String, dynamic>((
      leadId,
      _,
    ) =>
        _i24.LeadDetailCubit(
          gh<_i7.LeadRepo>(),
          leadId,
        ));
    gh.factoryParam<_i25.ListingDetailCubit, String, dynamic>((
      id,
      _,
    ) =>
        _i25.ListingDetailCubit(
          gh<_i10.ListingsRepo>(),
          id,
        ));
    gh.factory<_i26.ListingsCubit>(
        () => _i26.ListingsCubit(gh<_i10.ListingsRepo>()));
    gh.factory<_i27.LoginCubit>(() => _i27.LoginCubit(gh<_i18.AuthRepo>()));
    gh.factoryParam<_i28.TaskDetailCubit, String, _i29.Activity?>((
      taskId,
      activity,
    ) =>
        _i28.TaskDetailCubit(
          gh<_i12.ActivityRepo>(),
          taskId,
          activity,
        ));
    gh.singleton<_i30.ActivityCubit>(
        _i30.ActivityCubit(gh<_i12.ActivityRepo>()));
    gh.factory<_i31.AddDealCubit>(() => _i31.AddDealCubit(
          gh<_i10.ListingsRepo>(),
          gh<_i7.LeadRepo>(),
          gh<_i21.DealsRepo>(),
          gh<_i16.AgentRepo>(),
        ));
    gh.singleton<_i32.AuthBloc>(_i32.AuthBloc(gh<_i18.AuthRepo>()));
    gh.factoryParam<_i33.DealDetailsCubit, String, dynamic>((
      dealId,
      _,
    ) =>
        _i33.DealDetailsCubit(
          gh<_i21.DealsRepo>(),
          gh<_i10.ListingsRepo>(),
          gh<_i7.LeadRepo>(),
          dealId,
        ));
    gh.factory<_i34.DealsCubit>(() => _i34.DealsCubit(gh<_i21.DealsRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i35.RegisterModules {}
