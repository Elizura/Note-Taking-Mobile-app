import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutternotetaker/domain/auth/i_auth_facade.dart';
import 'package:flutternotetaker/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../domain/auth/auth_failure.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);
  @override
  Future getSignedInUser() async {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final String emailAddressStr =
        emailAddress.value.fold((error) => '', (value) => value);

    final String passwordStr = password.value.fold((l) => '', (r) => r);

    return await _firebaseAuth
        .createUserWithEmailAndPassword(
            email: emailAddressStr, password: passwordStr)
        .then((value) => right(unit));
  }

  @override
  Future signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final String emailAddressStr = emailAddress.value.fold((l) => '', (r) => r);
    final String passwordStr = password.value.fold((l) => '', (r) => r);
    return await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr, password: passwordStr);
  }

  @override
  Future signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return const AuthFailure.cancelledByUser();
    }
    final googleAuthentication = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken);
    return _firebaseAuth.signInWithCredential(authCredential);
  }
}
