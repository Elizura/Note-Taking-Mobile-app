import 'package:flutternotetaker/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future getSignedInUser();
  Future registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future signInWithGoogle();
}
