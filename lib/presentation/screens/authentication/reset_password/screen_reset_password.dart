import 'package:artopsy/presentation/screens/authentication/reset_password/widget/back_to_login_option.dart';
import 'package:artopsy/presentation/screens/authentication/reset_password/widget/password_reset_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../common_widgets/authentication_page_logo.dart';
import '../../../common_widgets/sign_textfield.dart';
import '../login/widget/text_before_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthenticationPageLogo(height: height, width: width),
                kHeight100,
                const TextbeforeField(text: 'Email'),
                kHeight,
                SignTextField(
                  controller: emailTextController,
                  text: "Enter Email Id",
                  icon: Icons.person_2_outlined,
                  isTextPasswordType: false,
                  isTextEmailType: true,
                ),
                kHeight30,
                PasswordResetButton(
                  width: width,
                  email: emailTextController.text,
                  formKey: formKey,
                ),
                const BackToLoginOption()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
