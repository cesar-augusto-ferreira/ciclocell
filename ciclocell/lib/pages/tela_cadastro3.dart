
import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';


class TelaCadastro3 extends StatefulWidget {

  static const routeName = "cadastro3";

  const TelaCadastro3({Key? key}) : super(key: key);

  @override
  State<TelaCadastro3> createState() => _TelaCadastro3State();
}

class _TelaCadastro3State extends State<TelaCadastro3> {
  @override
  Widget build(BuildContext context) {

    final argumentosCa = ModalRoute.of(context)!.settings.arguments as ArgumentosCadastro2;

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

       //corpo da página
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Cadastro",
                  tamFont: 28,
                ),
                const SizedBox(height: 20),
                Texto(
                  label: "${argumentosCa.nome} seja bem vindo", 
                  tamFont: 18,
                ),
                const SizedBox(height: 20),
                const Texto(
                  label: "Seu Cadastro foi concluido",
                  tamFont: 18,
                ),
                const SizedBox(height: 20),
                const Texto(
                  label: "Use o e-mail", 
                  tamFont: 18,
                ),
                Texto(
                  label: "${argumentosCa.email}", 
                  tamFont: 18,
                ),
                const Texto(
                  label: "para fazer o login", 
                  tamFont: 18,
                ),
                const SizedBox(height: 50),
                Image.asset(
                  "lib/images/ok.png",
                ),
                const SizedBox(height: 40),
                const Texto(
                  label: "Obrigado", 
                  tamFont: 16,
                ),
                const SizedBox(height: 40),  
                Botao(corBotao: Colors.grey.shade200, label: "Concluir", acaoBotao: "login"),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Texto(
                      label: "CicloCell", 
                      tamFont: 16,
                    ),
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


