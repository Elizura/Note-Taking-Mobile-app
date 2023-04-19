import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutternotetaker/domain/auth/auth_failure.dart';
import 'package:flutternotetaker/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(const SignInFormState()) {
    on<EmailChanged>(_onEmailChange);
    on<PasswordChanged>(_onPasswordChange);
    // on<RegisterWithEmailAndPasswordPressed>(
    //     _onRegisterWithEmailAndPasswordPressed);
    // on<SignInWithGooglePressed>(_onSignInWithGooglePressed);
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
}
  // void _onRegisterWithEmailAndPasswordPressed(
  //     PasswordChanged event, Emitter emit) {
  //   return _performActionOnAuthFacadeWithEmailAndPassword()
  // }


//   Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
//     Future<Either<AuthFailure, Unit>> Function({
//       @required EmailAddress emailAddress,
//       @required Password password,
//     })
//         forwardedCall,
//   ) async* {
//     Either<AuthFailure, Unit> failureOrSuccess;

//     final isEmailValid = state.emailAddress.isValid();
//     final isPasswordValid = state.password.isValid();

//     if (isEmailValid && isPasswordValid) {
//       yield state.copyWith(
//         isSubmitting: true,
//         authFailureOrSuccessOption: none(),
//       );

//       failureOrSuccess = await forwardedCall(
//         emailAddress: state.emailAddress,
//         password: state.password,
//       );
//     }
//     yield state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       authFailureOrSuccessOption: optionOf(failureOrSuccess),
//     );
//   }


// }
