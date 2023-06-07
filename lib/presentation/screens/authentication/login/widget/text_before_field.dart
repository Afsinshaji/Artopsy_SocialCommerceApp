import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/colors/colors.dart';

class TextbeforeField extends StatelessWidget {
  const TextbeforeField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            color: kBlackColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
