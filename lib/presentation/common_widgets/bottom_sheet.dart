import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/artwork/post_artwork/post_artwork_bloc.dart';
import '../../core/colors/colors.dart';
import '../screens/addartwork/screen_addartwork.dart';
import 'alert_box.dart';

Future<dynamic> bottomSheet(BuildContext context, ArtworkDetails artwork) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    backgroundColor: kWhiteColor,
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        decoration: const BoxDecoration(
            // color: kBlackColor,
            ),
        child: Column(
          children: [
            kHeight20,
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => AddArtworkScreen(
                                artwork: artwork,
                                toEdit: true,
                              )));
                },
                child: Text(
                  'Edit Art',
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
                  alertBox(
                    context,
                    'Delete This Art',
                    () {
                      // deleteArtwork(artwork.artworkId)
                      //     .then((value) => Navigator.pushReplacement(
                      //         context,
                      //         CupertinoPageRoute(
                      //           builder: (context) => const ProfileScreen(),
                      //         )));
                      BlocProvider.of<PostArtworkBloc>(context).add(
                          PostArtworkEvent.deletingArtwork(
                              artworkId: artwork.artworkId));
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);

                      //       BlocProvider.of<PostArtworkBloc>(context).add(
                      // const PostArtworkEvent.readingPostedArtwork());
                    },
                  );
                },
                child: Text(
                  'Delete Art',
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
