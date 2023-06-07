import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';

class ArtWorkListWidget extends StatelessWidget {
  final int index;
  const ArtWorkListWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhiteColor.withOpacity(.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 15, 13, 4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(artworkImageList[index]),
            ),
          ),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 140,
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
                        )),
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
              ),
              const LikeButton(
                isLiked: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
