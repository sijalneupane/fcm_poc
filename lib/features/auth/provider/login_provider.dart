import 'package:fcm_poc/core/api_response.dart';
import 'package:fcm_poc/features/auth/model/logindata.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  String _email = '';
  String _password = '';
  String _fcmToken = '';
  bool _isLoading = false;
  String? _error;
  final LoginService _loginService = LoginService();

  String get email => _email;
  String get password => _password;
  String get fcmToken => _fcmToken;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  Future<void> loadFcmToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _fcmToken = prefs.getString('fcm_token') ?? '';
    notifyListeners();
  }

  Future<void> login() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      LoginData loginData=LoginData(email: _email,password: _password,fcmToken:_fcmToken);
    ApiResponse response=await _loginService.login(loginData);
    } catch (e) {
      _error = 'An error occurred: '
          '${e.toString()}';
    }
    _isLoading = false;
    notifyListeners();
  }
}
