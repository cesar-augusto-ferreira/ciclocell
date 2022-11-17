


import 'package:ciclocell/main.dart';

import '../main.dart';
import '../main.dart';
import '../main.dart';
import '../pages/tela_login.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';

class TelaRecuperacao2 extends StatelessWidget {
  static const routeName = "recuperacao2";
  
  const TelaRecuperacao2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final argumentosRecupSenha = ModalRoute.of(context)!.settings.arguments as ArgumentosRecupSenha;

    return Scaffold(     
      
        //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "CicloCell",
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 15, 234, 22),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),

          //corpo da página
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(label: "Recuperaçao de senha", tamFonte: 25),
                const SizedBox(height: 20),
                Texto(label: "Olá ${argumentosRecupSenha.nome}", tamFonte: 25),
                const SizedBox(height: 20),
                const Texto(label: "Sua senha foi enviada para o E-mail:", tamFonte: 18),
                const SizedBox(height: 20),
                Texto(label: "${argumentosRecupSenha.email}", tamFonte: 25),
                const SizedBox(height: 50),
                Image.asset(
                  "lib/images/ok.png",
                ),
                const SizedBox(height: 50),
                const Texto(label: "Obrigado", tamFonte: 16),
                const SizedBox(height: 40),  
                Botao(
                  corBotao: Colors.grey.shade200, 
                  nomeBotao: "Concluir", 
                  acaoBotao: "login",
                ),
                const SizedBox(height: 130),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [                    
                    const Texto(label: "CicloCell", tamFonte: 16),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),

    );
    
  }
}

