// import das sessoes
import 'package:curso_getit/manegers/session_manager.dart';
import 'package:flutter/material.dart';

// import dos pacotes
import 'package:get_it/get_it.dart';

void configureDependencies() {

  debugPrint("inicio da configuração de dependencias");

  final sessionManager = SessionManager();
  debugPrint("sessionManager configure => ${sessionManager.hashCode}");
  GetIt.I.registerSingleton(sessionManager);

  debugPrint("fim da configuração de dependencias");

}