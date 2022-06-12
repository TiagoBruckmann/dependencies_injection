// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data_source/auth_remote_datasource.dart' as _i3;
import '../manegers/session_manager.dart' as _i5;
import '../repositories/auth_repository.dart' as _i4;

const String _prod = 'prod';
const String _homolog = 'homolog';
const String _dev = 'dev';
const String _local = 'local';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthRemoteDatasource>(() => _i3.AuthRemoteDatasource());
  gh.factory<_i4.AuthRepository>(
      () => _i4.ApiAuthRepository(get<_i3.AuthRemoteDatasource>()),
      registerFor: {_prod, _homolog, _dev});
  gh.factory<_i4.AuthRepository>(() => _i4.FirebaseAuthRepository(),
      registerFor: {_local});
  gh.lazySingleton<_i5.SessionManager>(
      () => _i5.SessionManager(get<_i4.AuthRepository>()));
  return get;
}
