// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i20;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;
import 'package:tofas_spor_okullari/app/routing/app_navigator.dart' as _i15;
import 'package:tofas_spor_okullari/app/routing/app_navigator_auto_route.dart'
    as _i32;
import 'package:tofas_spor_okullari/app/routing/app_router.dart' as _i3;
import 'package:tofas_spor_okullari/config/di/blocs_module.dart' as _i26;
import 'package:tofas_spor_okullari/config/di/firebase_module.dart' as _i28;
import 'package:tofas_spor_okullari/config/di/main_module.dart' as _i30;
import 'package:tofas_spor_okullari/config/di/networking_service.dart' as _i29;
import 'package:tofas_spor_okullari/config/di/repository_module.dart' as _i33;
import 'package:tofas_spor_okullari/config/di/service_module.dart' as _i27;
import 'package:tofas_spor_okullari/data/models/services/key_value_store.dart'
    as _i17;
import 'package:tofas_spor_okullari/data/models/services/notification_service.dart'
    as _i23;
import 'package:tofas_spor_okullari/data/models/services/user_model_local_storage_service.dart'
    as _i18;
import 'package:tofas_spor_okullari/data/models/utils/device_info.dart' as _i4;
import 'package:tofas_spor_okullari/data/repositories/auth_repository.dart'
    as _i19;
import 'package:tofas_spor_okullari/data/repositories/firebase_repository.dart'
    as _i8;
import 'package:tofas_spor_okullari/domain/repositories/auth_repository_impl.dart'
    as _i34;
import 'package:tofas_spor_okullari/domain/repositories/firebase_repository_Impl.dart'
    as _i35;
import 'package:tofas_spor_okullari/presentation/home/home_bloc.dart' as _i10;
import 'package:tofas_spor_okullari/presentation/login/login_bloc.dart' as _i21;
import 'package:tofas_spor_okullari/presentation/main_tab/main_tab_bloc.dart'
    as _i22;
import 'package:tofas_spor_okullari/presentation/onboarding/onboarding_bloc.dart'
    as _i24;
import 'package:tofas_spor_okullari/presentation/profile/profile_bloc.dart'
    as _i11;
import 'package:tofas_spor_okullari/presentation/splash/splash_bloc.dart'
    as _i25;
import 'package:tofas_spor_okullari/presentation/tab_3/tab_3_bloc.dart' as _i14;
import 'package:tofas_spor_okullari/presentation/tab_4/tab_4_bloc.dart' as _i13;
import 'package:tofas_spor_okullari/presentation/utils/bottom_sheet_helper.dart'
    as _i16;
import 'package:tofas_spor_okullari/service/shared_preferences_key_value_store.dart'
    as _i31;

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
    final mainModule = _$MainModule(this);
    final serviceModule = _$ServiceModule(this);
    final firebaseModule = _$FirebaseModule();
    final repositoryModule = _$RepositoryModule(this);
    final blocModule = _$BlocModule(this);
    final networkingModule = _$NetworkingModule();
    gh.lazySingleton<_i3.AppRouter>(() => mainModule.getAppRouter());
    await gh.singletonAsync<_i4.DeviceInfo>(
      () => serviceModule.getDeviceInfo(),
      preResolve: true,
    );
    gh.factory<_i5.FirebaseAuth>(() => firebaseModule.auth);
    gh.factory<_i6.FirebaseFirestore>(() => firebaseModule.store);
    gh.singleton<_i7.FirebaseMessaging>(firebaseModule.getFirebaseMessaging());
    gh.lazySingleton<_i8.FirebaseRepository>(
        () => repositoryModule.firebaseRepository);
    gh.singleton<_i9.FlutterLocalNotificationsPlugin>(
        serviceModule.getFlutterLocalNotificationPlugin());
    gh.factory<_i10.HomeBloc>(() => blocModule.homeBloc);
    gh.factory<_i11.ProfileBloc>(() => blocModule.profileBloc);
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => mainModule.getSharedPreferences(),
      preResolve: true,
    );
    gh.factory<_i13.TabDortBloc>(() => blocModule.tabDortBloc);
    gh.factory<_i14.TabUcBloc>(() => blocModule.tabUcBloc);
    gh.singleton<_i15.AppNavigator>(mainModule.navigator);
    gh.singleton<_i16.BottomSheetHelper>(serviceModule.bottomSheetHelper);
    gh.factory<_i17.KeyValueStore>(
        () => mainModule.sharedPreferencesKeyValueStore);
    gh.singleton<_i18.UserModelLocalStorageService>(
        serviceModule.localStorageService);
    gh.lazySingleton<_i19.AuthRepository>(
        () => repositoryModule.authRepository);
    gh.lazySingleton<_i20.Dio>(() => networkingModule.getDio(
          gh<_i18.UserModelLocalStorageService>(),
          gh<_i4.DeviceInfo>(),
        ));
    gh.factory<_i21.LoginBloc>(() => blocModule.loginBloc);
    gh.factory<_i22.MainTabBloc>(() => blocModule.mainTabBloc);
    gh.singleton<_i23.NotificationService>(serviceModule.notificationService);
    gh.factory<_i24.OnBoardingBloc>(() => blocModule.onBoardingBloc);
    gh.factory<_i25.SplashBloc>(() => blocModule.splashBloc);
    return this;
  }
}

class _$BlocModule extends _i26.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i11.ProfileBloc get profileBloc =>
      _i11.ProfileBloc(_getIt<_i8.FirebaseRepository>());
  @override
  _i21.LoginBloc get loginBloc => _i21.LoginBloc(_getIt<_i19.AuthRepository>());
  @override
  _i22.MainTabBloc get mainTabBloc => _i22.MainTabBloc(
        _getIt<_i8.FirebaseRepository>(),
        _getIt<_i19.AuthRepository>(),
      );
  @override
  _i10.HomeBloc get homeBloc => _i10.HomeBloc(_getIt<_i8.FirebaseRepository>());
  @override
  _i25.SplashBloc get splashBloc => _i25.SplashBloc(
        _getIt<_i19.AuthRepository>(),
        _getIt<_i8.FirebaseRepository>(),
      );
  @override
  _i24.OnBoardingBloc get onBoardingBloc =>
      _i24.OnBoardingBloc(_getIt<_i18.UserModelLocalStorageService>());
  @override
  _i14.TabUcBloc get tabUcBloc =>
      _i14.TabUcBloc(_getIt<_i8.FirebaseRepository>());
  @override
  _i13.TabDortBloc get tabDortBloc =>
      _i13.TabDortBloc(_getIt<_i8.FirebaseRepository>());
}

class _$ServiceModule extends _i27.ServiceModule {
  _$ServiceModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i18.UserModelLocalStorageService get localStorageService =>
      _i18.UserModelLocalStorageService(_getIt<_i17.KeyValueStore>());
  @override
  _i16.BottomSheetHelper get bottomSheetHelper =>
      _i16.BottomSheetHelper(_getIt<_i15.AppNavigator>());
  @override
  _i23.NotificationService get notificationService => _i23.NotificationService(
        _getIt<_i7.FirebaseMessaging>(),
        _getIt<_i9.FlutterLocalNotificationsPlugin>(),
        _getIt<_i19.AuthRepository>(),
      );
}

class _$FirebaseModule extends _i28.FirebaseModule {}

class _$NetworkingModule extends _i29.NetworkingModule {}

class _$MainModule extends _i30.MainModule {
  _$MainModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i31.SharedPreferencesKeyValueStore get sharedPreferencesKeyValueStore =>
      _i31.SharedPreferencesKeyValueStore(_getIt<_i12.SharedPreferences>());
  @override
  _i32.AutoRouteNavigator get navigator =>
      _i32.AutoRouteNavigator(_getIt<_i3.AppRouter>());
}

class _$RepositoryModule extends _i33.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i34.AuthRepositoryImpl get authRepository => _i34.AuthRepositoryImpl(
        _getIt<_i6.FirebaseFirestore>(),
        _getIt<_i5.FirebaseAuth>(),
        _getIt<_i18.UserModelLocalStorageService>(),
      );
  @override
  _i35.FirebaseRepositoryImpl get firebaseRepository =>
      _i35.FirebaseRepositoryImpl(_getIt<_i6.FirebaseFirestore>());
}
