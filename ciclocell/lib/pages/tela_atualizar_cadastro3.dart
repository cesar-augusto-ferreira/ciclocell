
import 'package:ciclocell/pages/Retorna_dados.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';


class TelaAtualizarCadastro3 extends StatefulWidget {
  const TelaAtualizarCadastro3({Key? key}) : super(key: key);

  @override
  State<TelaAtualizarCadastro3> createState() => _TelaCadastro3State();
}

class _TelaCadastro3State extends State<TelaAtualizarCadastro3> {
  @override
  Widget build(BuildContext context) {

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
                  label: "Atualizar o Cadastro",
                  tamFont: 28,
                ),
                const SizedBox(height: 20),             
                Usuario().nome(22, Colors.white),
                const SizedBox(height: 20),
                const Texto(
                  label: "Seu Cadastro foi atualizado",
                  tamFont: 18,
                ),
                const SizedBox(height: 20),
                const Texto(
                  label: "Use o e-mail", 
                  tamFont: 18,
                ),
                Usuario().email(22, Colors.white),
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
                Botao(corBotao: Colors.grey.shade200, label: "Concluir", acaoBotao: "principal"),
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


