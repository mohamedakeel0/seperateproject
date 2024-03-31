 import 'dart:convert';


import 'package:dio/dio.dart';


class DioHelper {
  static late Dio dio;

  static init() {

    dio = Dio(

      BaseOptions(
        baseUrl:  '',
        receiveDataWhenStatusError: true,validateStatus:(_) => true,
        contentType: Headers.jsonContentType,
        responseType:ResponseType.json,


      ),
    );

  }

  static Future<Response> getdata(
      {required String url,
      Map<String, dynamic>? query,

      String? token}) async {
    dio.options.headers = {
      "lang":"",
      "Authorization": "Bearer $token",
    };

    if(query==null){
print(query);
      query = {
        'api_token':token,
      };
print(query);
    }

    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> putdata(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,

      String? token}) async {
    dio.options.headers = {
      "lang":"",
      "Authorization": "Bearer $token",
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
  static Future<Response> postdata(
      {required String url,
        Map<String, dynamic>? query,
         var data,

        String? token}) async {



    print("${dio.options.baseUrl}");
    dio.options.headers = {
      "lang":"",
      "Authorization": "Bearer $token",
    };
    if(query==null){

      query = {'api_token':token};

    }
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
