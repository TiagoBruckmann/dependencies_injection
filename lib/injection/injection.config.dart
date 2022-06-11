// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data_source/auth_remote_datasource.dart' as _i3;
import '../manegers/session_manager.dart' as _i6;
import '../repositories/auth_repository.dart' as _i4;
import 'injection.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.factory<_i3.AuthRemoteDatasource>(() => _i3.AuthRemoteDatasource());
  gh.factory<_i4.AuthRepository>(
      () => _i4.ApiAuthRepository(get<_i3.AuthRemoteDatasource>()));
  gh.factory<_i5.FlutterSecureStorage>(() => registerModules.storage);
  gh.singleton<_i6.SessionManager>(
      _i6.SessionManager(get<_i4.AuthRepository>()));
  return get;
}

class _$RegisterModules extends _i7.RegisterModules {}
