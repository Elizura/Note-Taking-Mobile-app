import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternotetaker/presentation/pages/sign_in/widgets/sign_in_form.dart';
import '../../../application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import '../../../injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: SignInForm(),
    );
  }
}
