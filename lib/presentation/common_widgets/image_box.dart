import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.borderradius,
    this.boxFit = BoxFit.contain,
  });

  final dynamic height;
  final dynamic width;
  final String image;
  final double borderradius;
  final BoxFit boxFit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: boxFit,
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.circular(borderradius),
      ),
    );
  }
}
