// imports nativos
import 'package:flutter/material.dart';

// import das telas
import 'package:curso_getit/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
