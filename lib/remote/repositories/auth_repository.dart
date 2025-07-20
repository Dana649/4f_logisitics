

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../dio/dio_client.dart';


class AuthRepo  {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  final FlutterSecureStorage flutterSecureStorage;

  AuthRepo(
      {required this.dioClient,
        required this.sharedPreferences,
        required this.flutterSecureStorage});





}
