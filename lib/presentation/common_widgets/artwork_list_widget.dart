import 'dart:developer';

import 'package:artopsy/bloc/favourites/favourites_bloc.dart';
import 'package:artopsy/presentation/screens/artwork/screen_artwork.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/models/artwork_details.dart';

class ArtWorkListWidget extends StatelessWidget {
  final int index;
  final List<ArtworkDetails> artworkList;
  final bool isFromMyProfile;
  final bool isCategoryScreen;

  const ArtWorkListWidget({
    super.key,
    required this.index,
    required this.artworkList,
    this.isFromMyProfile = false,
    this.isCategoryScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    late double imageHeight;
    return Card(
      color: kWhiteColor.withOpacity(.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              imageHeight = context.size!.height;
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ArtworkScreen(
                      artwork: artworkList[index],
                      imageHeight: imageHeight,
                      isFromMyProfile: isFromMyProfile,
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 15, 13, 4),
              child: !isCategoryScreen
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(artworkList[index].imageUrl),
                    )
                  : Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  NetworkImage(artworkList[index].imageUrl),
                              fit: BoxFit.fill)),
                    ),
            ),
          ),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    Text(artworkList[index].artist,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            letterSpacing: .5,
                            fontSize: 12,
                            color: kBlackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Text(
                      artworkList[index].title,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: .5,
                          fontSize: 8,
                          color: kBlackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: AutoSizeText(
                        "₹${artworkList[index].price}",
                        minFontSize: 5,
                        maxLines: 2,
                        maxFontSize: 16,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            //   fontSize: 5,
                            // fontSize: 16,
                            color: kBlackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // CircularIconButton(
              //     radius: 15.0,
              //     icon: Icons.edit,
              //     iconSize: 18,
              //     buttonBackgroundColor: kWhiteColor,
              //     iconColor: kredColor,
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           CupertinoPageRoute(
              //             builder: (context) => AddArtworkScreen(
              //               artwork: artworkList[index],
              //               toEdit: true,
              //             ),
              //           ));
              //     }),
            ],
          ),
        ],
      ),
    );
  }
}

class FavButton extends StatelessWidget {
  const FavButton({
    super.key,
    required this.artwork,
  });
  final ArtworkDetails artwork;

  @override
  Widget build(BuildContext context) {
    log('bulding....');
    bool liked = false;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavouritesBloc>(context)
          .add(FavouritesEvent.checkfavourites(artwork: artwork));
    });
    return BlocBuilder<FavouritesBloc, FavouritesState>(
        //  future: checkFav(widget.artwork),
        builder: (context, checkState) {
      if (checkState is favouritesinitial) {
        log('IsInitial.....');
        BlocProvider.of<FavouritesBloc>(context)
            .add(FavouritesEvent.checkfavourites(artwork: artwork));
      }
      if (checkState is isfavOrnot) {
        liked = checkState.isFav;
        log('here');
        log(liked.toString());
      }

      return IconButton(
          onPressed: () {
            BlocProvider.of<FavouritesBloc>(context)
                .add(FavouritesEvent.addandremovefavourites(artwork: artwork));
          },
          icon: Icon(
            Icons.favorite,
            size: 22,
            color: liked ? kBlackColor : kWhiteColor,
          ));

//       return LikeButton(
//         size: 22,
//         isLiked: liked,
//         onTap: (isLiked) {
//           //  addAndremoveFav(artwork);
//           BlocProvider.of<FavouritesBloc>(context)
//               .add(FavouritesEvent.addandremovefavourites(artwork: artwork));

// // BlocProvider.of<FavouritesBloc>(context)
// //           .add(FavouritesEvent.checkfavourites(artwork: artwork));

//           //Want improvisation in the following portion okay?
//           return checkFav(artwork);
//         },
//       );
    });
  }
}
