import 'package:artopsy/presentation/screens/authentication/login/screen_login.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';

class BackToLoginOption extends StatelessWidget {
  const BackToLoginOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Click to go back on ",
          style: TextStyle(
            color: kBlackColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false,
            );
          },
          child: const Text(
            "Log in",
            style: TextStyle(
              color: kBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
