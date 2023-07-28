import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:artopsy/presentation/screens/homepage/screen_homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/string/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i0.wp.com/www.newphotodownload.info/wp-content/uploads/2021/08/%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D8%AC%D8%A8%D8%A7%D9%84-%D9%88%D9%85%D8%B1%D8%AA%D9%81%D8%B9%D8%A7%D8%AA-20-1.jpg?w=320&ssl=1')),
            borderRadius: BorderRadius.circular(0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  letterSpacing: .5,
                  fontSize: 28,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            kHeight30,
            Text(welcomeNote,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 16,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            kHeight100,
            SignButton(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const HomePageScreen(),
                    ),
                    (route) => false,
                  );
                },
                width: width,
                text: "Let's Start")
          ],
        ),
      ),
    );
  }
}
