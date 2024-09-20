import 'package:flutter/material.dart';
import 'package:japastreaming/pages/cadastro.dart';
import 'package:japastreaming/pages/home.dart';
import 'package:japastreaming/pages/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home(),
      },
    );
  }
}

