import 'package:artopsy/presentation/screens/authentication/login/screen_login.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
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
