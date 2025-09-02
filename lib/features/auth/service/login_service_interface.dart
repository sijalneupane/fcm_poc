import 'package:fcm_poc/core/api_response.dart';
import 'package:fcm_poc/features/auth/model/logindata.dart';

abstract class ILoginService {
  Future<ApiResponse> login(LoginData loginData);
}
