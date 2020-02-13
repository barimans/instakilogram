import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:instakilogram/main.dart';
import 'package:instakilogram/models/response_photo.dart';
import 'package:http/http.dart' as http;

class ApiClient{
  static const baseUrl = 'https://3778a8a7-9b3e-453b-98d7-b291358c5552.mock.pstmn.io/api';
  final BuildContext context;

  ApiClient({this.context}) : assert(context != null);

  /*GET => Photo*/
  Future<ResponsePhoto> getListPhoto() async {
    var response = await http.get('$baseUrl/photo',);
    alice.onHttpResponse(response);
    if (response.statusCode == 200) {
      return ResponsePhoto.fromJson(jsonDecode(response.body));
    } else {
      return ResponsePhoto.withError('something wrong');
    }
  }

}