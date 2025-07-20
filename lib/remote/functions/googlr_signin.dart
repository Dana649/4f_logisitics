import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignin {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;



  Future<Map<String, Object?>?> signinWithGoogle() async {
    try {
      if (kDebugMode) {
        print("Provider key");
      }
      await _googleSignIn.signOut();
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      print("Provider key ${googleSignInAccount!.id}");
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential userCredential =
      await _auth.signInWithCredential(credential);
      User? user = userCredential.user;

      if (kDebugMode) {
        print({"User": user, "Key": googleSignInAccount.id}.toString());
      }
      return {"User": user, "Key": googleSignInAccount.id, "Email":user!.email,'Name':user.displayName, "PhotoUrl":user.photoURL, "ProviderId":user.providerData[0].providerId};
    } catch (e, s) {
      if (kDebugMode) {
        print("Google Sign in Exception $e");
      }
      if (kDebugMode) {
        print(s);
      }
    }
    return null;
  }

}
