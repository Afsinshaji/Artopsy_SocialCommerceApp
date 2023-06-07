import 'dart:developer';

import 'package:artopsy/presentation/screens/authentication/login/widget/forgot_password_button.dart';
import 'package:artopsy/presentation/screens/authentication/login/widget/google_signup_button.dart';
import 'package:artopsy/presentation/screens/authentication/login/widget/login_welcome_text.dart';
import 'package:artopsy/presentation/screens/authentication/login/widget/signup_option.dart';
import 'package:artopsy/presentation/screens/authentication/login/widget/text_before_field.dart';
import 'package:artopsy/presentation/screens/welcomepage/screen_welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../common_widgets/authentication_page_logo.dart';
import '../../../common_widgets/sign_buttton.dart';
import '../../../common_widgets/sign_textfield.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthenticationPageLogo(height: height, width: width),
                  kHeight20,
                  loginWelcomeText(),
                  kHeight50,
                  const TextbeforeField(text: 'Email'),
                  SignTextField(
                    controller: emailTextController,
                    text: "Enter Email Id",
                    icon: Icons.person_2_outlined,
                    isTextPasswordType: false,
                    isTextEmailType: true,
                  ),
                  kHeight20,
                  const TextbeforeField(text: 'Password'),
                  SignTextField(
                    controller: passwordTextController,
                    text: "Enter password",
                    icon: Icons.lock_outline,
                    isTextPasswordType: true,
                  ),
                  kHeight,
                  const Align(
                      alignment: Alignment.centerRight,
                      child: ForgotPasswordButton()),
                  kHeight30,
                  SignButton(
                      text: "LOG IN",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: emailTextController.text,
                            password: passwordTextController.text,
                          )
                              .then((value) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WelcomeScreen(),
                              ),
                              (route) => false,
                            ).onError(
                                (error, stackTrace) => {log(error.toString())});
                          });
                        }
                      },
                      width: width),
                  const Align(alignment: Alignment.center, child: Text('or')),
                  GoogleSignupButton(width: width),
                  const SignupOption()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
