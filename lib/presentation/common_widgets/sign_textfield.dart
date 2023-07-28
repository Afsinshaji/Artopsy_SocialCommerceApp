import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class SignTextField extends StatefulWidget {
  const SignTextField({
    super.key,
    required this.controller,
    required this.isTextPasswordType,
    required this.icon,
    required this.text,
    this.isTextEmailType = false,
    this.isTextPasswordConfirmType = false,
    this.enteredPassword = '',
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
  });

  final TextEditingController controller;
  final bool isTextPasswordType;
  final IconData icon;
  final String text;
  final bool isTextEmailType;
  final bool isTextPasswordConfirmType;
  final String enteredPassword;
  final FloatingLabelBehavior floatingLabelBehavior;

  @override
  State<SignTextField> createState() => _SignTextFieldState();
}

late bool isVisible;

class _SignTextFieldState extends State<SignTextField> {
  @override
  void initState() {
    super.initState();
    isVisible = widget.isTextPasswordType;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: kBlackColor,
      elevation: 2,
      borderRadius: BorderRadius.circular(15),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isTextPasswordType ? isVisible : false,
        enableSuggestions: !widget.isTextPasswordType,
        autocorrect: !widget.isTextPasswordType,
        cursorColor: kBlackColor,
        style: TextStyle(color: kBlackColor.withOpacity(0.9)),
        decoration: InputDecoration(
            suffixIcon: widget.isTextPasswordType
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility),
                    color: kBlackColor,
                  )
                : null,
            prefixIcon: Icon(
              widget.icon,
              color: kBlackColor,
            ),
            labelText: widget.text,
            labelStyle: TextStyle(
              color: kBlackColor.withOpacity(0.9),
            ),
            filled: true,
            floatingLabelBehavior: widget.floatingLabelBehavior,
            fillColor: kWhiteColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            )),
        keyboardType: widget.isTextPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        validator: (text) {
          if (text == null || text.isEmpty) {
            return "Can't be Empty";
          }
          if (widget.isTextEmailType &&
              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(text)) {
            return 'Enter a valid Email';
          }
          if (widget.isTextPasswordConfirmType &&
              text != widget.enteredPassword) {
            return "password doesn't match";
          }
          if (widget.isTextPasswordType && text.length < 6) {
            return 'Minimum password length is 6';
          }

          return null;
        },
      ),
    );
  }
}
