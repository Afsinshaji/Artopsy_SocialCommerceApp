import 'dart:developer';

import 'package:artopsy/application/follow_following/check_follow/check_follow_bloc.dart';
import 'package:artopsy/infrastructure/follow_following/follow.dart';
import 'package:artopsy/presentation/screens/visitingprofile/screen_visiting_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../application/users/all_users/all_users_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../domain/models/user_profile.dart';
import '../../../common_widgets/circular_profile_picture.dart';

class ArtistListView extends StatelessWidget {
  const ArtistListView({super.key, required this.searchingart});
  final String searchingart;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AllUsersBloc>(context).add(const AllUsersEvent.readingAllUsers());
    });
    return BlocBuilder<AllUsersBloc, AllUsersState>(
      builder: (context, state) {
        List<UserProfile> userList = [];
        if (state is displayAllUsers) {
          userList = state.completeUserList;
          if (searchingart.isNotEmpty) {
            List<UserProfile> displayList = userList;
            userList = displayList
                .where((element) => element.userName
                    .toLowerCase()
                    .contains(searchingart.toLowerCase()))
                .toList();
          }

          return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // if (index == 0) {
                //   return Text(
                //     searchingart.isEmpty
                //         ? 'Search You'
                //         : 'FOUND ${userList.length} RESLUTS',
                //     maxLines: 1,
                //     textAlign: TextAlign.center,
                //     style: GoogleFonts.bangers(
                //       textStyle: const TextStyle(
                //         overflow: TextOverflow.ellipsis,
                //         letterSpacing: 1.3,
                //         fontSize: 40,
                //         color: kBlackColor,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //   );
                // } else {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => VisitingProfileScreen(
                              visitingUserId: userList[index].userId),
                        ));
                  },
                  leading: CirularImage(
                      radius: 20,
                      clipRectRadius: 20,
                      imageUrl: userList[index].imageUrl),
                  title: Text(userList[index].userName,
                  
                    style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 18,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                  // trailing: FollowFollowingButton(
                  //     visitingUserId: userList[index].userId),
                );
                // }
              },
              separatorBuilder: (context, index) => kHeight,
              itemCount: userList.length);
        } else {
          return const Text('Error');
        }
      },
    );
  }
}

class FollowFollowingButton extends StatefulWidget {
  const FollowFollowingButton({super.key, required this.visitingUserId});
  final String visitingUserId;

  @override
  State<FollowFollowingButton> createState() => _FollowFollowingButtonState();
}

class _FollowFollowingButtonState extends State<FollowFollowingButton> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CheckFollowBloc>(context).add(
          CheckFollowEvent.checkingFollowed(visitingUserId: widget.visitingUserId));
    });

    return BlocBuilder<CheckFollowBloc, CheckFollowState>(
        builder: (context, followState) {
      if (followState is displayIsFollowed) {
        final isFollowing = followState.isFollowed;
        String text = '';
        if (isFollowing == true) {
          text = 'Following';
          log('deiiiii');
        } else {
          log('d00000iiiii');
          text = 'Follow';
        }

        return TextButton(
            style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor: MaterialStatePropertyAll(
                  isFollowing ? kWhiteColor : kredColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
              shadowColor: MaterialStateProperty.all(kBlackColor),
              elevation: const MaterialStatePropertyAll(7),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 24, vertical: 10)),
            ),
            onPressed: () async {
              if (!isFollowing) {
                log('ooiii');
                await addFollow(widget.visitingUserId);
              } else {
                await removeFollow(widget.visitingUserId);
              }
              setState(() {});
            },
            child: Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  fontSize: 15,
                  color: isFollowing ? kredColor : kWhiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ));
      } else {
        return const Text('Error');
      }
    });
  }
}
