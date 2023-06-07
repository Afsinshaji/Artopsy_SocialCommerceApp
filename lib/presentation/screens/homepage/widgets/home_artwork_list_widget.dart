import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';

class HomeArtWorkListWidget extends StatelessWidget {
  final int index;
  const HomeArtWorkListWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(artworkImageList[index]),
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120,
              child: Column(
                children: [
                  Text(artworkArtistList[index],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: .5,
                          fontSize: 12,
                          color: kBlackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                  Text(artworkNameList[index],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: .5,
                          fontSize: 8,
                          color: kBlackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 50,
              child: AutoSizeText(artworkPriceList[index],
                  minFontSize: 5,
                  maxLines: 3,
                  maxFontSize: 16,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      //   fontSize: 5,
                      // fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}