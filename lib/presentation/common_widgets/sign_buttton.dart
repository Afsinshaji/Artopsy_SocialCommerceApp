import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class SignButton extends StatelessWidget {
  const SignButton(
      {super.key,
      required this.onTap,
      required this.width,
      required this.text});

  final dynamic width;
  final Function onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return kBlackColor;
            }
            return kWhiteColor;
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
