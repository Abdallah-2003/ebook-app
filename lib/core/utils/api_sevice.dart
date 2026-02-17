import 'package:dio/dio.dart';

class ApiSevice {

  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiSevice(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {

    final response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }
}