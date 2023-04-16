import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutternotetaker/domain/auth/auth_failure.dart';
import 'package:flutternotetaker/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc() : super(_Initial()) {
    on<SignInFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
