// import das sessoes
import 'package:curso_getit/manegers/session_manager.dart';
import 'package:flutter/material.dart';

// import dos pacotes
import 'package:get_it/get_it.dart';

void configureDependencies() {

  debugPrint("inicio da configuração de dependencias");

  // apenas chama a sessao quando ela é chamada, economizando recursos do dispositivo, é chamado quando se tem estado, nesse caso o usuario
  GetIt.I.registerLazySingleton(() => SessionManager());

  debugPrint("fim da configuração de dependencias");

}