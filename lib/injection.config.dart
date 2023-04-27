// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:flutternotetaker/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i7;
import 'package:flutternotetaker/domain/auth/i_auth_facade.dart' as _i8;
import 'package:flutternotetaker/infrastructure/firebase_auth_facade.dart'
    as _i9;
import 'package:flutternotetaker/infrastructure/firebase_injectable.dart'
    as _i10;
import 'package:flutternotetaker/presentation/app_widget.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AppWidget>(() => _i3.AppWidget(key: gh<_i4.Key>()));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.SignInFormBloc>(
      () => _i7.SignInFormBloc(gh<_i8.IAuthFacade>()));
  gh.singleton<_i9.FirebaseAuthFacade>(_i9.FirebaseAuthFacade(
    gh<_i5.FirebaseAuth>(),
    gh<_i6.GoogleSignIn>(),
  ));
  return getIt;
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}
