import 'package:artopsy/core/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/follower_following_card_text.dart';

class FollowersFollowingCard extends StatelessWidget {
  const FollowersFollowingCard({
    super.key,
  });

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
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FollowersFollowingCardText(
              text: 'Afsin Shaji',
              fontSize: profileNameFontSize,
              fontWeight: profileNameFontWeight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FollowersFollowingCardText(
                    text: 'art works',
                    fontSize: followRowFontSize,
                    fontWeight: followRowFontWeight),
                FollowersFollowingCardText(
                    text: 'followers',
                    fontSize: followRowFontSize,
                    fontWeight: followRowFontWeight),
                FollowersFollowingCardText(
                    text: 'following',
                    fontSize: followRowFontSize,
                    fontWeight: followRowFontWeight)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowersFollowingCardText(
                    text: '18',
                    fontSize: numberRowFontSize,
                    fontWeight: numberRowFontWeight),
                kWidth20,
                FollowersFollowingCardText(
                    text: '100',
                    fontSize: numberRowFontSize,
                    fontWeight: numberRowFontWeight),
                kWidth20,
                FollowersFollowingCardText(
                    text: '85',
                    fontSize: numberRowFontSize,
                    fontWeight: numberRowFontWeight),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
