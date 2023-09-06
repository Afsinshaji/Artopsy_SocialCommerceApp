import 'dart:developer';

import 'package:artopsy/presentation/screens/welcomepage/screen_welcome.dart';
import 'package:artopsy/services/firebase_services/signin_signout_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';
import '../../../../../infrastructure/users/add_user_name.dart';
import '../../../../../presentation/common_widgets/alert_box.dart';

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
          final List<String?> googleName = await FirebaseSignService()
              .signInWithGoogle()
              .onError((error, stackTrace) {
            alertSnackbar(context, error.toString());
            return [];
          });
          log('hereeee....');
          log(googleName.toString());
          if (googleName.isNotEmpty) {
            // ignore: use_build_context_synchronously
            // Navigator.pushReplacement(
            //   context,CupertinoPageRoute(builder: (context) => const Center(child: CircularProgressIndicator()),)
            // );
            await addUserName(googleName[0] ??= '', googleName[1]!).then(
              (value) => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomeScreen(),
                ),
                (route) => false,
              ),
            );
          }
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
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'http://pngimg.com/uploads/google/google_PNG19635.png')),
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
