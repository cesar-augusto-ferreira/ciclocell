import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import '../pages/tela_login.dart';
import '../pages/tela_principal.dart';
import '../pages/tela_cadastro.dart';
import '../pages/tela_cadastro2.dart';
import '../pages/tela_cadastro3.dart';
import '../pages/tela_avaliacao.dart';
import '../pages/tela_avaliacao2.dart';
import '../pages/tela_avaliacao3.dart';
import '../pages/tela_recuperar_senha.dart';
import '../pages/tela_recuperar_senha2.dart';

Future<void> main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());

}

class ArgumentosRecupSenha {
  final String nome;
  final String email;
  

  ArgumentosRecupSenha(this.nome, this.email);
}

class ArgumentosCadastro {
  final String nome;
  final String rg;
  final String cpf;
  final String email;
  final String senha;

  ArgumentosCadastro(this.nome, this.rg, this.cpf, this.email, this.senha);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CicloCell",

      initialRoute: "login",
      routes: {
        "login" : ((context) => const TelaLogin()),
        "principal" : ((context) => const TelaPrincipal()),
        //"ajuda" : ((context) => const TelaAjuda()),
        "cadastro" : ((context) => const TelaCadastro()),
        TelaCadastro2.routeName: (context) => TelaCadastro2(),
        "cadastro3" : ((context) => const TelaCadastro3()),
        "recuperacao1" :((context) => const TelaRecuperacao1()),
        TelaRecuperacao2.routeName: (context) => TelaRecuperacao2(),
        "avaliacao1" :((context) => const TelaAvaliacao()),
        "avaliacao2" :((context) => const TelaAvaliacao2()),
        "avaliacao3" :((context) => const TelaAvaliacao3()),
        

      },

    );
    
  }
}




    
  
