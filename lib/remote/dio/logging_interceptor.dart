import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../di/di_container.dart';
import '../providers/auth_provider.dart';

class LoggingInterceptor extends InterceptorsWrapper {
  int maxCharactersPerLine = 200;
  int maxRetryAttempts = 3;

  final HashMap<String, int> _retryAttempts = HashMap<String, int>();

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {

    String responseAsString = response.data.toString();

    if (responseAsString.length > maxCharactersPerLine) {
      int iterations = (responseAsString.length / maxCharactersPerLine).floor();
      for (int i = 0; i <= iterations; i++) {
        int endingIndex = i * maxCharactersPerLine + maxCharactersPerLine;
        if (endingIndex > responseAsString.length) {
          endingIndex = responseAsString.length;
        }
      }
    } else {
    }
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    final authRepo = sl<AuthProvider>();

    if (err.response != null) {
      switch (err.response!.statusCode) {
        case 401:
          String requestKey = err.requestOptions.path;
          int attempts = _retryAttempts[requestKey] ?? 0;
          if (attempts < maxRetryAttempts) {
            _retryAttempts[requestKey] = attempts + 1;
            try {
              // await authRepo.refreshToken();
              // handler.resolve(await _retry(err.requestOptions));
              return;
            } on DioException catch (e) {
              handler.next(e);
              return;
            }
          } else {
            debugPrint('Max retry attempts reached for ${err.requestOptions.path}');
          }
          break;
        case 403:
          // await authRepo.logout();
          // await authRepo.logoutApi();
          // navigatorKey.currentState?.pushAndRemoveUntil(
          //   MaterialPageRoute(builder: (context) => const LoginPage()),
          //       (route) => false,
          // );
          return;
        case 400:
          break;
        default:

          break;
      }
    } else {
      debugPrint('Error without response: $err');
    }

    handler.next(err);
  }

  // Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    // final authRepo = sl<AuthProvider>();
    // final newToken = await authRepo.getToken();

    // return authRepo.dioClient.request<dynamic>(
    //   requestOptions.path,
    //   options: Options(
    //     method: requestOptions.method,
    //     headers: {
    //       ...requestOptions.headers,
    //       'Authorization': 'Bearer $newToken',
    //     },
    //   ),
    //   data: requestOptions.data,
    //   queryParameters: requestOptions.queryParameters,
    // );
  // }
}
