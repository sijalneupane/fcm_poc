
import 'package:fcm_poc/core/page_status.dart';

class ApiResponse {
  final PageStatus? pageStatus;
  final String? errorMessaage;
  final int? statusCode;
  final dynamic data;
  ApiResponse(
    {
      this.data,
      this.errorMessaage,
      this.statusCode,
      this.pageStatus
    }
  );
}