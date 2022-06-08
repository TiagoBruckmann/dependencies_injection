// import dos modelos
import 'package:curso_getit/models/user.dart';

// import dos dados da api
import 'package:curso_getit/data_source/auth_remote_datasource.dart';

abstract class AuthRepository {
  User? getCurrentUser();
}

class ApiAuthRepository implements AuthRepository {

  ApiAuthRepository(this.remoteDatasource);

  final AuthRemoteDatasource remoteDatasource;

  @override
  User? getCurrentUser() {
    return remoteDatasource.getCurrentUser();
  }

}

class FirebaseAuthRepository implements AuthRepository {

  @override
  User? getCurrentUser() {
    return null;
  }

}