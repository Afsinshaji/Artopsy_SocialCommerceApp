import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/image_box.dart';
import '../addartwork/screen_addartwork.dart';
import '../authentication/login/screen_login.dart';

// import '../myprofile/screen_myprofile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      navigateUser();
    });
  }

  void navigateUser() async {
    if (FirebaseAuth.instance.currentUser != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddArtworkScreen(),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
          child: ImageBox(
        height: height,
        width: width,
        image: 'lib/assets/images/Android Large - 1.png',
        borderradius: 0,
      )),
    );
  }
}
