// import dos modelos
import 'package:curso_getit/models/user.dart';

// import dos repositorios
import 'package:curso_getit/repositories/auth_repository.dart';

// import dos pacotes
import 'package:injectable/injectable.dart';

@lazySingleton
class SessionManager {

  SessionManager(this.authRepository) {
    print("construc sessionManager");
    _getCurrentUser();
  }

  final AuthRepository authRepository;

  User? user;

  void _getCurrentUser() {
    user = authRepository.getCurrentUser();
  }

  @disposeMethod
  void dispose() {
    print("dispose");
  }

}