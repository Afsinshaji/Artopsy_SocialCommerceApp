import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/common_widgets/alert_box.dart';
import '../../presentation/screens/welcomepage/screen_welcome.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const authenticationinitial()) {
    on<login>((event, emit) {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      )
          .then((value) {
        Navigator.pushAndRemoveUntil(
          event.context,
          CupertinoPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
          (route) => false,
        );
      }).onError((error, stackTrace) {
        alertSnackbar(event.context, 'Error: ${error.toString()}');
        log(error.toString());
      });
    });
  }
}
