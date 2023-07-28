import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/screens/follow/screen_follower.dart';
import 'package:artopsy/presentation/screens/follow/screen_following.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/follower_following_card_text.dart';

class FollowersFollowingCard extends StatelessWidget {
  const FollowersFollowingCard({
    super.key,
    required this.isvisiting,
    required this.userName,
    this.visitingUserId = '',
  });
  final bool isvisiting;
  final String visitingUserId;
  final String userName;
  @override
  Widget build(BuildContext context) {
    const double profileNameFontSize = 12;
    const FontWeight profileNameFontWeight = FontWeight.w700;
    const double followRowFontSize = 12;
    const FontWeight followRowFontWeight = FontWeight.w500;
    const double numberRowFontSize = 12;
    const FontWeight numberRowFontWeight = FontWeight.w500;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FollowersFollowingCardText(
              text: userName,
              fontSize: profileNameFontSize,
              fontWeight: profileNameFontWeight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FollowersFollowingCardText(
                    text: 'art works',
                    fontSize: followRowFontSize,
                    fontWeight: followRowFontWeight),
                GestureDetector(
                  onTap: () {
                    if (!isvisiting) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const FollowersScreen(),
                          ));
                    }
                  },
                  child: const FollowersFollowingCardText(
                      text: 'followers',
                      fontSize: followRowFontSize,
                      fontWeight: followRowFontWeight),
                ),
                GestureDetector(
                  onTap: () {
                    if (!isvisiting) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const FollowingScreen(),
                          ));
                    }
                  },
                  child: const FollowersFollowingCardText(
                      text: 'following',
                      fontSize: followRowFontSize,
                      fontWeight: followRowFontWeight),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowersFollowingCardNumbers(
                    isVisiting: isvisiting,
                    visitingUserId: visitingUserId,
                    isArtwork: true,
                    fontSize: numberRowFontSize,
                    fontWeight: numberRowFontWeight),
                kWidth20,
                FollowersFollowingCardNumbers(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const FollowersScreen(),
                          ));
                    },
                    isVisiting: isvisiting,
                    visitingUserId: visitingUserId,
                    isFollowers: true,
                    fontSize: numberRowFontSize,
                    fontWeight: numberRowFontWeight),
                kWidth20,
                FollowersFollowingCardNumbers(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const FollowingScreen(),
                        ));
                  },
                  isVisiting: isvisiting,
                  visitingUserId: visitingUserId,
                  fontSize: numberRowFontSize,
                  fontWeight: numberRowFontWeight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
