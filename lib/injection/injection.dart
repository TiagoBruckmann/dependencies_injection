// import dos pacotes
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.I;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModules {

  @singleton
  final storage = const FlutterSecureStorage();

}