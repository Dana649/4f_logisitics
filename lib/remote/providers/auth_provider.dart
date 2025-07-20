
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../repositories/auth_repository.dart';
import '../response/api_response.dart';
import '../response/response_model.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepo authRepo;
  final FlutterSecureStorage flutterSecureStorage;
  final Dio dioClient;

  AuthProvider(
      {required this.authRepo,
        required this.flutterSecureStorage,
        required this.dioClient});


  ResponseModel? responseModel;
  ApiResponse? apiResponse;





}
