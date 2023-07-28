import 'package:flutter/material.dart';

class ArtworkImageclip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    //0 is 1 point
    path.lineTo(0, h); // this is 2point
    path.quadraticBezierTo(
        w * 0.5,
        h - 100, // this is 3 point
        w,
        h); // this is 4point
    path.lineTo(w, 0); // this is 5point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}