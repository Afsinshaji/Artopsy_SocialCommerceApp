import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';

class TextBeforeArtworkField extends StatelessWidget {
  const TextBeforeArtworkField({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.fromLTRB(20, 20, 0, 0),
  });
  final String text;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            color: kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
