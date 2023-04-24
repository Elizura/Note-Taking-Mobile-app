// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i4;
import 'package:flutternotetaker/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i5;
import 'package:flutternotetaker/domain/auth/i_auth_facade.dart' as _i6;
import 'package:flutternotetaker/presentation/app_widget.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
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
  gh.factory<_i3.AppWidget>(() => _i3.AppWidget(key: gh<_i4.Key>()));
  gh.factory<_i5.SignInFormBloc>(
      () => _i5.SignInFormBloc(gh<_i6.IAuthFacade>()));
  return getIt;
}
