import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import '../pages/tela_login.dart';
import '../pages/tela_principal.dart';
import '../pages/tela_cadastro.dart';
import '../pages/tela_recuperar_senha.dart';
import '../pages/tela_avaliacao.dart';
import '../pages/tela_avaliacao2.dart';
import '../pages/tela_avaliacao3.dart';

Future<void> main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CicloCell",

      initialRoute: "avaliacao2",
      routes: {
        "login" : ((context) => const TelaLogin()),
        "principal" : ((context) => const TelaPrincipal()),
        //"ajuda" : ((context) => const TelaAjuda()),
        "cadastro" : ((context) => const TelaCadastro()),
        "recuperacao1" :((context) => const TelaRecuperacao1()),
        //"recuperacao2" :((context) => const TelaRecuperacao2()),
        "avaliacao1" :((context) => const TelaAvaliacao()),
        "avaliacao2" :((context) => const TelaAvaliacao2()),
        "avaliacao3" :((context) => const TelaAvaliacao3()),
        

      },

    ),
  );
}