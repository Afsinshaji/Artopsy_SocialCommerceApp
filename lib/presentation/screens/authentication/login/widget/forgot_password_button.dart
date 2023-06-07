import 'package:artopsy/presentation/screens/authentication/reset_password/screen_reset_password.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResetPasswordScreen(),
          ),
        );
      },
      child: const Text(
        "forgot password ?",
        style: TextStyle(
          color: kBlackColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
