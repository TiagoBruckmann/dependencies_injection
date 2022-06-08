// import das sessoes
import 'package:curso_getit/data_source/auth_remote_datasource.dart';
import 'package:curso_getit/manegers/session_manager.dart';
import 'package:curso_getit/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

// import dos pacotes
import 'package:get_it/get_it.dart';

void configureDependencies() {

  debugPrint("inicio da configuração de dependencias");

  const firebaseUser = true;

  GetIt.I.registerFactory(() => AuthRemoteDatasource());
  if ( firebaseUser == true ) {
    GetIt.I.registerFactory<AuthRepository>(() => FirebaseAuthRepository());
  } else {
    GetIt.I.registerFactory<AuthRepository>(() => ApiAuthRepository(GetIt.I.get()));
  }

  GetIt.I.registerSingleton(SessionManager(GetIt.I.get()));

  debugPrint("fim da configuração de dependencias");

}