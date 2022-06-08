// import dos pacotes
import 'package:http/http.dart' as http;

// import dos modelos
import 'package:curso_getit/models/user.dart';

class AuthRemoteDatasource {

  User? getCurrentUser() {
    return User("Tiago B");
  }

}