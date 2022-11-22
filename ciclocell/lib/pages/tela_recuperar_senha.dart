import 'package:ciclocell/main.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../controller/login_controller.dart';

class TelaRecuperacao1 extends StatefulWidget {
  const TelaRecuperacao1({Key? key}) : super(key: key);

  @override
  State<TelaRecuperacao1> createState() => _TelaRecuperacao1State();
}

class _TelaRecuperacao1State extends State<TelaRecuperacao1> {
  var nome = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(
                  label: "Recuperar senha",
                  tamFont:  25,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: "Preencha os campos abaixo.",
                  tamFont: 18,
                ),
                const SizedBox(height: 90),               
                CaixaTexto().SemBorda("Nome*", "Digite o seu ", nome, Icons.person_outline, 20), 
                const SizedBox(height: 40),
                CaixaTexto().SemBorda("E-mail*", "Digite o seu ", email, Icons.email_outlined, 20),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200,
                      label: "Cancelar",
                      acaoBotao: "login",
                    ),
                    const SizedBox(width: 80),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child: const Text(
                        "Enviar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),

                      onPressed: () async { 
                        if (nome.text.isNotEmpty && email.text.isNotEmpty) {
                                LoginController().esqueceuSenha(email.text);
                                Navigator.pushReplacementNamed(context, "recuperacao2",
                                  arguments: ArgumentosRecupSenha(nome.text, email.text),
                                );
                              } else {
                                Mensagem().erro(context,
                                    "Informe o nome e e-mail para recuperar a senha.");
                              }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: "* Campos obrigatórios",
                  tamFont: 14,
                ),
                const SizedBox(height: 15),
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







