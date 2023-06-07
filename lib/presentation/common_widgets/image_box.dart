import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.borderradius});

  final dynamic height;
  final dynamic width;
  final String image;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(borderradius)),
    );
  }
}
