import 'package:dio/dio.dart';
import 'package:fcm_poc/core/api_const.dart';
import 'package:fcm_poc/core/api_response.dart';
import 'package:fcm_poc/features/auth/model/logindata.dart';

import 'login_service_interface.dart';

class LoginService implements ILoginService {
  @override
  Future<ApiResponse> login(LoginData loginData) async {
    Dio dio=Dio();
    final data=loginData.toJson();
    try {
      Response res=await dio.post(ApiConst.loginUrl,data: data);
    ApiResponse apiRes=  ApiResponse(data: res.data,errorMessaage: res.data["message"],statusCode: res.statusCode);
    return apiRes;
    } catch (e) {
      print(e.toString());
      return ApiResponse(errorMessaage: e.toString(),statusCode:500);
    }
    throw UnimplementedError();
    // return email.isNotEmpty && password.isNotEmpty && fcmToken.isNotEmpty;
  }
}
