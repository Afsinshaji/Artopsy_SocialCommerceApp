import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/colors/colors.dart';

Column loginWelcomeText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          'Welcome!',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              letterSpacing: .5,
              fontSize: 25,
              color: kBlackColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          'please login or sign up to continue our app',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              letterSpacing: .5,
              fontSize: 14,
              color: kBlackColor45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  );
}
