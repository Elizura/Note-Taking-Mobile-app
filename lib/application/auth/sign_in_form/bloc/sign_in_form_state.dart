// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_in_form_bloc.dart';

class SignInFormState extends Equatable {
  const SignInFormState(
    this.emailAddress,
    this.password,
    this.showErrorMessage,
    this.isSubmitting,
    this.authFailureOrSucess,
  );

  final EmailAddress emailAddress;
  final Password password;
  final bool showErrorMessage;
  final bool isSubmitting;
  final String authFailureOrSucess;

  @override
  List<Object> get props => [
        emailAddress,
        password,
        showErrorMessage,
        isSubmitting,
        authFailureOrSucess
      ];

  SignInFormState copyWith({
    EmailAddress? emailAddress,
    Password? password,
    bool? showErrorMessage,
    bool? isSubmitting,
    String? authFailureOrSucess,
  }) {
    return SignInFormState(
      emailAddress ?? this.emailAddress,
      password ?? this.password,
      showErrorMessage ?? this.showErrorMessage,
      isSubmitting ?? this.isSubmitting,
      authFailureOrSucess ?? this.authFailureOrSucess,
    );
  }
}
