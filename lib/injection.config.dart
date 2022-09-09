// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i8;
import 'data/repositories/firebase_auth_provider_impl.dart' as _i5;
import 'domain/repositories/auth/auth_provider.dart' as _i4;
import 'domain/usecases/auth/auth_usecases.dart' as _i6;
import 'presentation/bloc/auth/sign_in_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.AuthProvider>(
      () => _i5.FirebaseAuthProvider(get<_i3.FirebaseAuth>()));
  gh.factory<_i6.AuthService>(
      () => _i6.AuthService(provider: get<_i4.AuthProvider>()));
  gh.factory<_i7.SignInBloc>(() => _i7.SignInBloc(get<_i6.AuthService>()));
  return get;
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}
