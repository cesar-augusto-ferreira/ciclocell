
import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import '../main.dart';
import '../pages/util.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var nome = TextEditingController();
  var rg = TextEditingController();
  var cpf = TextEditingController();
  var email = TextEditingController();
  var senha = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          // Appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CicloCell',
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(
                  label: 'Cadastro',
                   tamFonte: 25,
                  ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Preencha os campos abaixo.',
                  tamFonte: 18,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Página 1/2', 
                  tamFonte: 16,
                ),
                const SizedBox(height: 10),
                CampoCadastro(
                  label: 'Nome*', 
                  hintLabel: 'Digite o seu ',
                  iconepref: Icons.person_outline,
                  variavel: nome, 
                  font: 25,
                ), 
                const SizedBox(height: 20,),
                CampoCadastro(
                  label: 'RG*', 
                  hintLabel: 'Digite o seu', 
                  iconepref: Icons.document_scanner_outlined,
                  variavel: rg, 
                  font: 25,
                ),
                const SizedBox(height: 20,),
                CampoCadastro(
                  label: 'CPF*', 
                  hintLabel: 'Digite o seu ', 
                  iconepref: Icons.document_scanner_outlined,
                  variavel: cpf, 
                  font: 25,
                ), 
                const SizedBox(height: 20,),
                CampoCadastro(
                  label: 'E-mail*', 
                  hintLabel: 'Digite o seu ', 
                  iconepref: Icons.email_outlined, 
                  variavel: email, 
                  font: 25,
                ),
                const SizedBox(height: 20),
                CampoCadastro(
                  label: "Senha*",
                  hintLabel: "Digite a ",
                  iconepref: Icons.vpn_key, 
                  variavel: senha, 
                  font: 25,
                ), 
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      nomeBotao: "Cancelar",
                      acaoBotao: "login",
                    ),
                    const SizedBox(width: 60),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),

                      onPressed: () async { 
                        if (nome.text.isNotEmpty && rg.text.isNotEmpty && cpf.text.isNotEmpty && email.text.isNotEmpty && senha.text.isNotEmpty) {
                                Navigator.pushReplacementNamed(context, "cadastro2",
                                  arguments: ArgumentosCadastro(nome.text, rg.text, cpf.text, email.text, senha.text),
                                );
                              } else {
                                erro(context,
                                    "Informe o nome, rg, cpf e email para fazer o cadastro.");
                              }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: '* Campos obrigatórios', tamFonte: 14),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Texto(label: 'CicloCell', tamFonte: 16),
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


