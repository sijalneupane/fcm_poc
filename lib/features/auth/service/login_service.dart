import 'package:dio/dio.dart';
import 'package:fcm_poc/core/api_const.dart';
import 'package:fcm_poc/core/api_response.dart';
import 'package:fcm_poc/features/auth/model/logindata.dart';

import 'login_service_interface.dart';

class LoginService implements ILoginService {
  @override
  Future<ApiResponse> login(LoginData loginData) async {
    Dio dio=Dio();
    Response res=await dio.post(ApiConst.loginUrl);
    throw UnimplementedError();
    // return email.isNotEmpty && password.isNotEmpty && fcmToken.isNotEmpty;
  }
}
