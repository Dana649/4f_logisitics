
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';
import '../constants/config_model.dart';
import '../dio/dio_client.dart';
import '../dio/logging_interceptor.dart';
import '../providers/auth_provider.dart';
import '../repositories/auth_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton(() => LoggingInterceptor()); // ✅ Register BEFORE DioClient

  // ✅ Register DioClient with its dependencies
  sl.registerLazySingleton(() => DioClient(
    BaseUrls.baseAPi,
    sl<Dio>(),
    loggingInterceptor: sl<LoggingInterceptor>(),
    sharedPreferences: sl(),
    flutterSecureStorage: sl(),
  ));

  // ✅ Register shared preferences and secure storage
  const storage = FlutterSecureStorage();
  final sharedPreferences = await SharedPreferences.getInstance();
  final localAuthentication = LocalAuthentication();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => storage);
  sl.registerLazySingleton(() => localAuthentication);

  // ✅ Register repositories
  sl.registerLazySingleton(() => AuthRepo(
    dioClient: sl(),
    sharedPreferences: sl(),
    flutterSecureStorage: sl(),
  ));

  // ✅ Register providers
  sl.registerFactory(() => AuthProvider(
    authRepo: sl(),
    flutterSecureStorage: sl(),
    dioClient: sl(),
  ));

  sharedPreferences.setBool(AppConstants.push, true);
}


