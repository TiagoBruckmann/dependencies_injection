// imports nativos
import 'package:flutter/material.dart';

// import das telas
import 'package:curso_getit/pages/login_page.dart';

// import das injecoes de depencias
import 'injection/injection.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build( BuildContext context ) {
    return MaterialApp(
      title: 'Curso GetIt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}