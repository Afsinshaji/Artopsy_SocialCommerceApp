import 'package:artopsy/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';

void alertSnackbar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          letterSpacing: .5,
          fontSize: 16,
          color: kBlackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    action: SnackBarAction(
      label: 'Okay',
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

alertBox(BuildContext context, String message, Function() onTap) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kredColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      title: Text(
        message,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 22,
            color: kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      content: Text(
        'Are You Sure?',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 18,
            color: kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: onTap,
                child: Text(
                  'Yes',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 14,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
                kWidth,
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'No',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 16,
                      color: kWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
          ],
        )
      ],
    ),
  );
}
