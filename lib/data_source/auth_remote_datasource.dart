// import dos pacotes
import 'package:curso_getit/injection/injection.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

// import dos modelos
import 'package:curso_getit/models/user.dart';

@injectable
class AuthRemoteDatasource {

  User? getCurrentUser() {
    // Future<void> token = getIt<FlutterSecureStorage>().read(key: "token");
    // token ??= getIt<FlutterSecureStorage>().write(key: "token", value: "EuSouALenda!");

    return User("Tiago B");
  }

}