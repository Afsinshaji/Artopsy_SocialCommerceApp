import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';

class TrendingHomeimageWidget extends StatelessWidget {
  const TrendingHomeimageWidget(
      {Key? key,
      this.angle = 0,
      this.radius = 0,
      required this.image,
      required this.margin,
      required this.size})
      : super(key: key);

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            //margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: kBlackColor,
                      blurRadius: 0,
                      spreadRadius: 25,
                      offset: Offset(30, 20))
                ],
                color: kBlackColor,
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
