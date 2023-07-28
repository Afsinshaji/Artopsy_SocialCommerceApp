import 'dart:developer';

import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/infrastructure/users/add_user_name.dart';
import 'package:artopsy/presentation/common_widgets/authentication_page_logo.dart';
import 'package:artopsy/presentation/screens/authentication/signup/widget/login_option.dart';
import 'package:artopsy/presentation/screens/authentication/signup/widget/signup_text_before_field.dart';

import 'package:artopsy/presentation/screens/welcomepage/screen_welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../common_widgets/alert_box.dart';
import '../../../common_widgets/sign_buttton.dart';
import '../../../common_widgets/sign_textfield.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final TextEditingController fullNameTextController = TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();

  final TextEditingController passwordConfirmTextController =
      TextEditingController();

  final TextEditingController emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: kWhiteColorWithop95,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AuthenticationPageLogo(height: height, width: width),
                  signupTextBeforeField(),
                  kHeight40,
                  SignTextField(
                    controller: fullNameTextController,
                    text: "Enter Full name",
                    icon: Icons.person_2_outlined,
                    isTextPasswordType: false,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  kHeight20,
                  SignTextField(
                    controller: emailTextController,
                    text: "Enter Email Id",
                    icon: Icons.person_2_outlined,
                    isTextPasswordType: false,
                    isTextEmailType: true,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  kHeight20,
                  SignTextField(
                    controller: passwordTextController,
                    text: "Enter password",
                    icon: Icons.lock_outline,
                    isTextPasswordType: true,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  kHeight20,
                  SignTextField(
                    controller: passwordConfirmTextController,
                    text: "Re-enter password",
                    icon: Icons.lock_outline,
                    isTextPasswordType: true,
                    isTextPasswordConfirmType: true,
                    enteredPassword: passwordTextController.text,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  kHeight40,
                  SignButton(
                      text: "SIGN UP",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: emailTextController.text,
                            password: passwordTextController.text,
                          )
                              .then((value) {
                            addUserName(fullNameTextController.text,emailTextController.text);
                            Navigator.pushAndRemoveUntil(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const WelcomeScreen(),
                              ),
                              (route) => false,
                            );
                          }).onError((error, stackTrace) {
                            alertSnackbar(
                                context, 'Error: ${error.toString()}');

                            log(error.toString());
                          });
                        }
                      },
                      width: width),
                  const LoginOption()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
