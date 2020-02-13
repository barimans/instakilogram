import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNav extends StatelessWidget {
  final int bottomNavCurrentIndex;
  final List<Widget> container;
  final Function onTapBottomNav;

  MainBottomNav({
    Key key,
    this.bottomNavCurrentIndex,
    this.container,
    this.onTapBottomNav
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 15.0,
      type: BottomNavigationBarType.fixed,
      onTap: onTapBottomNav,
      currentIndex: bottomNavCurrentIndex,
      selectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/ic_home_fill.svg',
            ),
            icon: SvgPicture.asset(
              'assets/icons/ic_home_def.svg',
            ),
            title: Text('')
        ),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/ic_search_fill.svg',
            ),
            icon: SvgPicture.asset(
              'assets/icons/ic_search_def.svg',
            ),
            title: Text('')
        ),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/ic_instag_fill.svg',
            ),
            icon: SvgPicture.asset(
              'assets/icons/ic_instag_def.svg',
            ),
            title: Text('')
        ),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/ic_love_fill.svg',
            ),
            icon: SvgPicture.asset(
              'assets/icons/ic_love_def.svg',
            ),
            title: Text('')
        ),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/ic_profil_fill.svg',
            ),
            icon: SvgPicture.asset(
              'assets/icons/ic_profil_def.svg',
            ),
            title: Text('')
        ),
      ],
    );
  }
}
