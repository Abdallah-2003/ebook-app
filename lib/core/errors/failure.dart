import 'package:dio/dio.dart';

class Failure {
  final String errMessage;
  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Sent timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
          errMessage:
              'Security certificate error. Please check your network or try again later.',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(
          errMessage:
              'Failed to connect to the server. Please check your internet connection.',
        );

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errMessage: 'No Internet Connection');
        }
        return ServerFailure(
          errMessage: 'unexpected error, please try again later!',
        );
      default:
        return ServerFailure(
          errMessage: 'Oops, there was an error, please try again!',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'Your request not found, please try again!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Internal server error, please try again!',
      );
    } else {
      return ServerFailure(
        errMessage: 'Oops, there was an error, please try again!',
      );
    }
  }
}
