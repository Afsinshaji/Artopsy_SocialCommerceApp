import 'package:flutter/cupertino.dart';

import '../../../../../core/colors/colors.dart';
import '../../signup/screen_signup.dart';

class SignupOption extends StatelessWidget {
  const SignupOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don'thave an account?",
          style: TextStyle(
            color: kBlackColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
                builder: (context) => SignupScreen(),
              ),
            );
          },
          child: const Text(
            "Sign up",
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
