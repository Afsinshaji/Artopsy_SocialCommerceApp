import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'image_box.dart';

class AuthenticationPageLogo extends StatelessWidget {
  const AuthenticationPageLogo(
      {super.key, required this.height, required this.width});
  final dynamic height;
  final dynamic width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight30,
        ImageBox(
          height: height * 1 / 6,
          width: width,
          image: 'lib/assets/images/artopsy-logo (1) 1.png',
          borderradius: 15,
        ),
      ],
    );
  }
}
