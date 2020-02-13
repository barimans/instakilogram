import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instakilogram/bloc/bloc.dart';
import 'package:instakilogram/models/photo.dart';
import 'package:instakilogram/repositories/repositories.dart';
import 'package:instakilogram/ui/main/home_ui/home_component/list_home.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {

  ApiRepository _apiRepository;
  PhotoBloc _photoBloc;

  @override
  void initState() {
    _apiRepository = ApiRepository(apiClient: ApiClient(context: context));
    _photoBloc = PhotoBloc(apiRepository: _apiRepository);
    _photoBloc.dispatch(PhotoFetching());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      bloc: _photoBloc,
      builder: (context, state){
        if (state is PhotoLoaded){
          if(state.photo.data.length > 0) {
            return Container(child: ListPhoto(listPhoto: state.photo.data));
          }else{
            return Container();
          }
        }
        if (state is PhotoLoading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is PhotoError){
          return Center(
            child: Text('Error nih'),
          );
        }
        return Container();
      });
  }


}
