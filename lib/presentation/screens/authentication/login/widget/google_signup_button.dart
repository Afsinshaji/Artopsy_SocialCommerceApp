import 'package:artopsy/presentation/screens/welcomepage/screen_welcome.dart';
import 'package:artopsy/services/firebase_services/signin_signout_service.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';

class GoogleSignupButton extends StatelessWidget {
  const GoogleSignupButton({
    super.key,
    required this.width,
  });

  final dynamic width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () async {
          await FirebaseSignService().signInWithGoogle();
          // ignore: use_build_context_synchronously
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
            ),
            (route) => false,
          );
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://53.fs1.hubspotusercontent-na1.net/hub/53/hubfs/image8-2.jpg?width=595&height=400&name=image8-2.jpg')),
                    borderRadius: BorderRadius.circular(20))),
            const Text(
              "Continue With Google",
              style: TextStyle(
                color: kBlackColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
