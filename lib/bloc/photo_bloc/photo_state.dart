import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:instakilogram/models/response_photo.dart';

abstract class PhotoState extends Equatable {
  PhotoState([List<Object> props = const []]) : super(props);
}

class InitialPhotoState extends PhotoState {}

class PhotoLoading extends PhotoState {}

class PhotoLoaded extends PhotoState {
  final ResponsePhoto photo;

  PhotoLoaded({@required this.photo})
      : assert(photo != null),
        super([photo]);

}

class PhotoError extends PhotoState {
  final String errorMessage;

  PhotoError({@required this.errorMessage})
      : assert(errorMessage != null),
        super([errorMessage]);
}