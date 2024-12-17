import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../application/core/network/client/api_service.dart';
import '../application/core/network/client/i_api_service.dart';
import '../application/core/network/socket/iSocket.dart';
import '../application/core/network/socket/socket_manager.dart';
import '../constants/constants.dart';
import '../data/local_data_source/preference/i_pref_helper.dart';
import '../data/local_data_source/preference/pref_helper.dart';
import '../services/location_services.dart';
import '../services/nav-service/i_nav_service.dart';
import '../services/nav-service/nav_service.dart';

final inject = GetIt.instance;

Future<void> setupLocator() async {
  inject.registerSingletonAsync(() => SharedPreferences.getInstance());
  inject.registerLazySingleton<INavService>(() => NavService());

  inject.registerLazySingleton<IPrefHelper>(() => PrefHelper(inject()));

  inject.registerLazySingleton<ISocketManager>(() => SocketManager.create(inject()));

  inject.registerLazySingleton<IApiService>(() => ApiService.create(externalValues: inject()));

  inject.registerLazySingleton<Px>(() => Px());

  inject.registerLazySingleton<LocationServices>(() => LocationServices());

  // inject.registerLazySingleton<IAuthApi>(() => AuthApi(inject()));
  // inject.registerLazySingleton<IAuthRepo>(() => AuthRepo(api: inject()));
}
