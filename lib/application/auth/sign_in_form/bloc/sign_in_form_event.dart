part of 'sign_in_form_bloc.dart';

abstract class SignInFormEvent {}

class EmailChanged extends SignInFormEvent {
  EmailChanged({required this.emailstr});
  final EmailAddress emailstr;
}

class PasswordChanged extends SignInFormEvent {
  PasswordChanged({required this.passwordstr});
  final Password passwordstr;
}

class RegisterWithEmailAndPasswordPressed extends SignInFormEvent {}

class SignInWithEmailAndPasswordPressed extends SignInFormEvent {}

class SignInWithGooglePressed extends SignInFormEvent {}
