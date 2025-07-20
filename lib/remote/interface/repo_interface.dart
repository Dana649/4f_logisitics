import '../response/api_response.dart';

abstract class RepoAbstract {
  Future<ApiResponse> get();
}
