import 'package:artopsy/presentation/screens/homepage/widgets/trending_home_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class TrendingStack extends StatelessWidget {
  const TrendingStack({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: size.width * 0.37,
              backgroundColor: Colors.grey.withOpacity(0.5),
            ),
          ),
          TrendingHomeimageWidget(
            image: artworkImageList[1],
            margin: const EdgeInsets.only(left: 170, top: 50),
            angle: 25,
            radius: 15,
            size: Size(size.width * 0.35, size.width * 0.55),
          ),
          TrendingHomeimageWidget(
            image: artworkImageList[2],
            margin: const EdgeInsets.only(right: 170, top: 50),
            angle: -25,
            radius: 15,
            size: Size(size.width * 0.35, size.width * 0.55),
          ),
          TrendingHomeimageWidget(
            image: artworkImageList[3],
            margin: const EdgeInsets.only(
              bottom: 35,
              top: 50,
            ),
            radius: 15,
            size: Size(size.width * 0.4, size.width * 0.6),
          )
        ],
      ),
    );
  }
}