part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState.initial() = _Initial;

  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required String authFailureOrSucess,
  }) = _SignInFormState;

  factory SignInFormState._initial() {
    return SignInFormState(
        authFailureOrSucess: '',
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessage: false,
        isSubmitting: false);
  }
}
