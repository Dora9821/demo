import 'dart:convert';

import 'package:demo/models/signup_request.dart';
import 'package:dio/dio.dart';
import 'package:demo/models/login_response.dart';

class SignupApi {
  Future<LoginResponseModel?> signup(SignupRequest request) async {
    var headers = {
      'Content-Type': 'application/json',
      'x-api-key':
          '70acd5355eaf206e332857ab6642e9c7efebee7538c125eaf04072ed912c77c0dc180fde7d8e3b9d116b51d54d560a4bb01b6dc4592174f5ba430bdcbb2393b2'
    };

    var dio = Dio();

    try {
      var response = await dio.request(
        'https://flutter08.onrender.com/v1/api/shop/signup',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        final loginResponse =
            LoginResponseModel.fromJson(json.encode(response.data));
        return loginResponse;
      } else {
        return Future.value(null);
      }
    } catch (e) {
      return Future.value(null);
    }
  }
}
