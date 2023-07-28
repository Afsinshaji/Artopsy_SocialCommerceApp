import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../application/artwork/complete_artwork/complete_artwork_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';

sortingBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    backgroundColor: kWhiteColor,
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            kHeight20,
            TextButton(
                onPressed: () {
                  BlocProvider.of<CompleteArtworkBloc>(context).add(
                      const CompleteArtworkEvent.readingCompletePostedArtwork(
                          sortingValue: 1));
                  Navigator.pop(context);
                },
                child: Text(
                  'Sort by price lower to higher',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Divider(
                color: kBlackColor,
              ),
            ),
            TextButton(
                onPressed: () {
                   BlocProvider.of<CompleteArtworkBloc>(context).add(
                      const CompleteArtworkEvent.readingCompletePostedArtwork(
                          sortingValue: 2));
                  Navigator.pop(context);
                },
                child: Text(
                  'Sort by price higher to lower',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
          ],
        ),
      );
    },
  );
}
