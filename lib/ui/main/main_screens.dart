import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instakilogram/ui/main/activity_ui/activity_screens.dart';
import 'package:instakilogram/ui/main/home_ui/home_screens.dart';
import 'package:instakilogram/ui/main/photo_ui/photo_screens.dart';
import 'package:instakilogram/ui/main/profil_ui/profil_screens.dart';
import 'package:instakilogram/ui/main/search_ui/search_screens.dart';

import 'main_bottom_nav.dart';

class MainScreens extends StatefulWidget {
  static const String routeName = '/MainScreens';

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int _bottomNavIndex = 0;
  List<Widget> _container = [
    new HomeScreens(),
    new SearchScreens(),
    new PhotoScreens(),
    new ActivityScreens(),
    new ProfilScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            'assets/icons/ic_camera.svg',
            height: 24,
            width: 24,
          ),
        ),
        titleSpacing: 0.0,
        title: Container(
          margin: EdgeInsets.only(top: 4.0),
          child: Text(
            'Instakilogram',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 28,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.normal
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              'assets/icons/ic_dm.svg',
              height: 24,
              width: 24,
            ),
          )
        ],
      ),
      body: _container[_bottomNavIndex],
      bottomNavigationBar: MainBottomNav(
        bottomNavCurrentIndex: _bottomNavIndex,
        container: _container,
        onTapBottomNav: (index){
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
