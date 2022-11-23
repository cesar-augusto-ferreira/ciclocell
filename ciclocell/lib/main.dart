import 'package:ciclocell/pages/tela_compra_nuvem.dart';
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
import '../pages/tela_bateria.dart';
import '../pages/tela_bateria2.dart';
import '../pages/tela_recuperar_senha.dart';
import '../pages/tela_recuperar_senha2.dart';
import '../pages/tela_anunciar.dart';
import '../pages/tela_anunciar2.dart';
import '../pages/tela_anunciar3.dart';
import '../pages/tela_performance.dart';
import '../pages/tela_performance2.dart';
import '../pages/tela_performance3.dart';
import '../pages/tela_sobre.dart';
import '../pages/tela_nuvem.dart';
import '../pages/tela_nuvem2.dart';
import '../pages/tela_minha_conta.dart';
import '../pages/tela_compra_nuvem.dart';
import '../pages/tela_compra_nuvem2.dart';
import '../pages/tela_ajuda.dart';
import '../pages/tela_ajuda2.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

//argumentos para segunda tela de recuperar senha
class ArgumentosRecupSenha {
  final String nome;
  final String email;

  ArgumentosRecupSenha(this.nome, this.email);
}

//argumentos para segunda tela de cadastro
class ArgumentosCadastro {
  final String nome;
  final String rg;
  final String cpf;
  final String email;
  final String senha;

  ArgumentosCadastro(this.nome, this.rg, this.cpf, this.email, this.senha);
}

//argumentos para terceira tela de cadastro
class ArgumentosCadastro2 {
  final String nome;
  final String email;

  ArgumentosCadastro2(this.nome, this.email);
}

//argumentos para segunda tela de anúncio
class ArgumentosAnuncio {
  final String marca;
  final String modelo;
  final String memoriaRam;
  final String memoriaInterna;

  ArgumentosAnuncio(
      this.marca, this.modelo, this.memoriaRam, this.memoriaInterna);
}

//argumentos para segunda tela de anúncio
class ArgumentosAvaliacao {
  final String marca;
  final String modelo;
  final String memoriaRam;
  final String memoriaInterna;

  ArgumentosAvaliacao(
      this.marca, this.modelo, this.memoriaRam, this.memoriaInterna);
}

//Argumento para segunda tela da nuvem
class ArgumentosNuvem {
  final String contratados;

  ArgumentosNuvem(this.contratados);
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
        "login": (context) => const TelaLogin(),
        "principal": (context) => const TelaPrincipal(),
        "ajuda1" : ((context) => const TelaAjuda()),
        "ajuda2" : ((context) => const TelaAjuda2()),
        "cadastro": (context) => const TelaCadastro(),
        TelaCadastro2.routeName: (context) => TelaCadastro2(),
        TelaCadastro3.routeName: (context) => TelaCadastro3(),
        "recuperacao1": (context) => const TelaRecuperacao1(),
        TelaRecuperacao2.routeName: (context) => TelaRecuperacao2(),
        "avaliacao1": (context) => const TelaAvaliacao(),
        TelaAvaliacao2.routeName: (context) => const TelaAvaliacao2(),
        "avaliacao3": (context) => const TelaAvaliacao3(),
        "anunciar1": (context) => const TelaAnunciar(),
        TelaAnunciar2.routeName: (context) => const TelaAnunciar2(),
        "anunciar3": (context) => const TelaAnunciar3(),
        "sobre": (context) => const TelaSobre(),
        "performance1": (context) => const TelaPerformance(),
        "performance2": (context) => const TelaPerformance2(),
        "performance3": (context) => const TelaPerformance3(),
        "nuvem1": (context) => const TelaNuvem(),
        "nuvem2": (context) => const TelaNuvem2(),
        "conta": (context) => const TelaMinhaConta(),
        "bateria1": (context) => const TelaBateria(),
        "bateria2": (context) => const TelaBateria2(),
        TelaCompra2.routeName: (context) => const TelaCompra2(),
        "compranuvem1": (context) => const TelaCompra1(),
      },
    );
  }
}
