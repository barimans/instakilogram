import 'package:flutter/material.dart';
import 'package:instakilogram/models/response_photo.dart';

import 'repositories.dart';

class ApiRepository{
  final ApiClient apiClient;

  ApiRepository({@required this.apiClient})
      : assert(apiClient != null);

  /*Repository => Photo*/
  Future<ResponsePhoto> getListPhoto() async{
    return await apiClient.getListPhoto();
  }
}