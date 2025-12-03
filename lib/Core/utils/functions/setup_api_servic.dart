import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Core/utils/functions/setup_service_locator.dart';
import 'package:dio/dio.dart';

void setupApiService() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
}