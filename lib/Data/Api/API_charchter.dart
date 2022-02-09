// ignore_for_file: avoid_print

import 'package:breakingbad/Helper/Strings.dart';
import 'package:dio/dio.dart';

class charachterAPI {
  late Dio dio;

  charachterAPI() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getallCharachter() async {
    try {
      Response response = await dio.get('characters');
      print(response.data);
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
