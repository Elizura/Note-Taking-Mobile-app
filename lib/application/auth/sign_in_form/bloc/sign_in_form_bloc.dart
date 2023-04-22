import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutternotetaker/domain/auth/auth_failure.dart';
import 'package:flutternotetaker/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade)
      : super(SignInFormState(
            EmailAddress(''), Password(''), false, false, none())) {
    on<EmailChanged>(_onEmailChange);
    on<PasswordChanged>(_onPasswordChange);
    on<RegisterWithEmailAndPasswordPressed>(
        _onRegisterWithEmailAndPasswordPressed);
    on<SignInWithEmailAndPasswordPressed>(_onSignInWithEmailAndPasswordPressed);
    on<SignInWithGooglePressed>(_onSignInWithGooglePressed);
  }
  void _onEmailChange(EmailChanged event, Emitter emit) {
    return emit(state.copyWith(
      emailAddress: EmailAddress(event.emailstr as String),
    ));
  }

  void _onPasswordChange(PasswordChanged event, Emitter emit) {
    return emit(
        state.copyWith(password: Password(event.passwordstr as String)));
  }

  void _onRegisterWithEmailAndPasswordPressed(
      RegisterWithEmailAndPasswordPressed event, Emitter emit) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSucess: none(),
      ));
      final failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
      emit(state.copyWith(
          isSubmitting: false, authFailureOrSucess: some(failureOrSuccess)));
    }
    emit(state.copyWith(showErrorMessage: true, authFailureOrSucess: none()));
  }

  void _onSignInWithEmailAndPasswordPressed(
      SignInWithEmailAndPasswordPressed event, Emitter emit) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSucess: none()));
      final failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
      emit(state.copyWith(
          isSubmitting: false, authFailureOrSucess: some(failureOrSuccess)));
    }
    emit(state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSucess: none()));
  }

  void _onSignInWithGooglePressed(
      SignInWithGooglePressed event, Emitter emit) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSucess: none()));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
          isSubmitting: false, authFailureOrSucess: some(failureOrSuccess)));
    }
    emit(state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSucess: none()));
  }
}
