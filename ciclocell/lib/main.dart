import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import '../pages/tela_login.dart';
import '../pages/tela_principal.dart';
import '../pages/tela_cadastro.dart';

Future<void> main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CicloCell",

      initialRoute: "login",
      routes: {
        "login" : ((context) => const TelaLogin()),
        "principal" : ((context) => const TelaPrincipal()),
        "cadastro" : ((context) => const TelaCadastro()),
      },

    ),
  );
}