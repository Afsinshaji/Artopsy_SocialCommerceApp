import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/screens/myprofile/screen_myprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menu_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final Size size = MediaQuery.of(context).size;
    return ZoomDrawer(
      
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      
      angle: 0,
      borderRadius: 40,
      menuScreenWidth: size.width,
      //style: DrawerStyle.style1,
      mainScreen: const MyProfilescreen(),
      showShadow: true,
      shadowLayer1Color: Colors.blueGrey,
      shadowLayer2Color: Colors.black,
      drawerShadowsBackgroundColor: Colors.black,
      menuBackgroundColor: kWhiteColor.withOpacity(0.9),
      menuScreen: const MenuPage(),
      closeDragSensitivity: 425,
    );
  }
}
