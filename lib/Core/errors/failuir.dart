import 'package:dio/dio.dart';

abstract class Failuir {
  final String message;

  Failuir(this.message);
}

class ServerFailure extends Failuir {
  ServerFailure(super.message);
  factory ServerFailure.fromDiorError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send  timeout with api server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate  with api server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to api server was canceld");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");
      case DioExceptionType.unknown:
        return ServerFailure("Opps There was an Error, Please try again");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure("Your request was not found, Please try later");
    } else if (statusCode == 500) {
      return ServerFailure("There is a promblem with server, Please try later");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }
    else {
      return ServerFailure("There was an error , please try again");
    }
  }
}
