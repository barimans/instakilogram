import 'package:instakilogram/models/photo.dart';

class ResponsePhoto {
  List<Photo> data;
  String error;

  ResponsePhoto({
    this.data,
    this.error
  });

  factory ResponsePhoto.fromJson(Map<String, dynamic> json) => ResponsePhoto(
    data: List<Photo>.from(json["data"].map((x) => Photo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };

  factory ResponsePhoto.withError(String error) => ResponsePhoto(
    error: error,
  );
}