// imports nativos
import 'package:flutter/material.dart';

// import das injecoes e modelos
import 'package:curso_getit/manegers/session_manager.dart';
import 'package:curso_getit/models/user.dart';

// import das telas
import 'package:curso_getit/pages/home_page.dart';

// import dos pacotes
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final sessionManager = GetIt.I.get<SessionManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text("Acessar"),
          onPressed: () {
            print("session.hashCode => ${sessionManager.hashCode}");
            sessionManager.user = User("Tiago B");
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => const HomePage(),
              ),
            );
          },
        ),
      ),

    );
  }
}
