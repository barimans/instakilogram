import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:instakilogram/models/response_photo.dart';
import 'package:instakilogram/repositories/api_repository.dart';
import 'photo.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final ApiRepository apiRepository;

  PhotoBloc({@required this.apiRepository})
      : assert(apiRepository != null);

  @override
  PhotoState get initialState => InitialPhotoState();

  @override
  void onTransition(Transition<PhotoEvent, PhotoState> transition) {
    print('Transistion => $transition');
    super.onTransition(transition);
  }

  @override
  Stream<PhotoState> mapEventToState(PhotoEvent event) async* {
    if (event is PhotoFetching) {
      yield PhotoLoading();
      try {
        final ResponsePhoto photo = await apiRepository.getListPhoto();
        if (photo.data != null) {
          yield PhotoLoaded(photo: photo);
        } else {
          yield PhotoError(errorMessage: 'Something Wrong');
        }
      } catch (e) {
        print(e);
        yield PhotoError(errorMessage: 'No Internet Koneksi');
      }
    }
  }
}