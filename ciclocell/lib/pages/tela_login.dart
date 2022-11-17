
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../controller/login_controller.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var email = TextEditingController();
  var senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),

      //Corpo do app
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'lib/images/Logo_CicloCell.png',
                  height: 180,
                ),
                const SizedBox(height: 60),
                CampoCadastro(
                  label: "E-mail", 
                  hintLabel: "Digite seu ", 
                  variavel: email, 
                  iconepref: Icons.email,
                   font: 25,
                ),
                const SizedBox(height: 45),
                CampoCadastro(
                  label: "Senha", 
                  hintLabel: "Digite sua ", 
                  variavel: senha, senha: true,
                  iconesuf: Icons.visibility_off_outlined, 
                  iconepref: Icons.vpn_key, 
                  font: 25,
                ),
                const SizedBox(height: 40),
                BotaoTexto(
                  corTexto: Colors.red.shade600,
                  texto: "Recuperar a senha",
                  decoracao: TextDecoration.underline,
                  acaoBotao: "recuperacao1",
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                    
                    Botao(
                      corBotao: Colors.grey.shade200,
                      nomeBotao: "Cadastrar",
                      acaoBotao: "cadastro",
                    ),
                    const SizedBox(width: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {LoginController().login(context, email.text, senha.text);}, 
                    ),
                  ],
                ),
                const SizedBox(height: 30),
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







                  