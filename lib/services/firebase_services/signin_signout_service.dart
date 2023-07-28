import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseSignService {
  final auth = FirebaseAuth.instance;
  final googleSignin = GoogleSignIn();
 Future<List<String?>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignin.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        await auth.signInWithCredential(authCredential);
      }
      return [googleSignInAccount!.displayName,googleSignInAccount.email];
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    }
  }

  signout() async {
    await auth.signOut();
    await googleSignin.signOut();
  }
}
