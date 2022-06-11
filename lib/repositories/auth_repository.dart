// import dos modelos
import 'package:curso_getit/models/user.dart';

// import dos dados da api
import 'package:curso_getit/data_source/auth_remote_datasource.dart';

// import dos pacotes
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  User? getCurrentUser();
}

@Injectable(as: AuthRepository)
class ApiAuthRepository implements AuthRepository {

  ApiAuthRepository(this.remoteDatasource);

  final AuthRemoteDatasource remoteDatasource;

  @override
  User? getCurrentUser() {
    return remoteDatasource.getCurrentUser();
  }

}

// @Injectable(as: AuthRepository)
class FirebaseAuthRepository implements AuthRepository {

  @override
  User? getCurrentUser() {
    return null;
  }

}