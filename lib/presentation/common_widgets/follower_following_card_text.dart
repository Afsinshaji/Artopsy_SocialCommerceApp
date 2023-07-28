import 'package:artopsy/application/follow_following/follow/follow_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/artwork/post_artwork/post_artwork_bloc.dart';
import '../../application/follow_following/visiting_follow/visiting_follow_bloc.dart';

void emptiest() {}

class FollowersFollowingCardNumbers extends StatelessWidget {
  const FollowersFollowingCardNumbers({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    this.isVisiting = false,
    this.isArtwork = false,
    this.isFollowers = false,
    this.visitingUserId = '',
    this.onTap = emptiest,
  });

  final double fontSize;
  final FontWeight fontWeight;
  final bool isArtwork;
  final bool isFollowers;
  final bool isVisiting;
  final String visitingUserId;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isVisiting) {
        BlocProvider.of<VisitingFollowBloc>(context).add(
            VisitingFollowEvent.gettingVisitingUserFollow(
                visitingUserId: visitingUserId));
        BlocProvider.of<PostArtworkBloc>(context).add(
            PostArtworkEvent.readingVisitingProfileArtwork(
                visitingUserId: visitingUserId));
      } else {
        BlocProvider.of<FollowBloc>(context)
            .add(const FollowEvent.gettingFollow());
        BlocProvider.of<PostArtworkBloc>(context)
            .add(const PostArtworkEvent.readingPostedArtwork());
      }
    });

    if (isArtwork) {
      return BlocBuilder<PostArtworkBloc, PostArtworkState>(
        // stream:
        //     isVisiting ? readVisitingArtwork(visitingUserId) : readArtwork(),
        builder: (context, artworkState) {
          List data = [];
          if (isVisiting) {
            if (artworkState is displayVisitingArtwork) {
              data = artworkState.artworkList;
            }
          } else {
            if (artworkState is displayArtwork) {
              data = artworkState.artworkList;
            }
          }
          return GestureDetector(
            onTap: onTap,
            child: Text(
              data.length.toString(),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ),
          );
        },
      );
    }

    if (isVisiting) {
      return BlocBuilder<VisitingFollowBloc, VisitingFollowState>(
          builder: (context, followState) {
        List data = [];

        if (followState is displayVisitingFollow) {
          data = isFollowers
              ? followState.followersList
              : followState.followingList;
        }

        return Text(
          data.length.toString(),
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        );
      });
    } else {
      return BlocBuilder<FollowBloc, FollowState>(
          builder: (context, followState) {
        List data = [];

        if (followState is displayFollow) {
          data = isFollowers
              ? followState.followersList
              : followState.followingList;
        }

        return Text(
          data.length.toString(),
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        );
      });
    }
  }
}

class FollowersFollowingCardText extends StatelessWidget {
  const FollowersFollowingCardText(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.text});
  final double fontSize;
  final FontWeight fontWeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
