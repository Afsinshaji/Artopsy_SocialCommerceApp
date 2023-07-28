import 'dart:developer';

import 'package:artopsy/presentation/screens/authentication/login/screen_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/colors.dart';
import '../../../../common_widgets/alert_box.dart';

class PasswordResetButton extends StatelessWidget {
  const PasswordResetButton(
      {super.key,
      required this.width,
      required this.email,
      required this.formKey});

  final dynamic width;
  final String email;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: ()async {
       
          if (formKey.currentState!.validate()) {
          
            log(email);
           await FirebaseAuth.instance
                .sendPasswordResetEmail(email: email)
                .then((value) {
              alertSnackbar(context, 'Check Your Email');
              Navigator.pushReplacement(
                  context,
                CupertinoPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }).onError((error, stackTrace) {
              alertSnackbar(context, 'Error: ${error.toString()}');
              log('Error: ${error.toString()}');
            });
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
        child: const Text(
          "RESET PASSWORD",
          style: TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
