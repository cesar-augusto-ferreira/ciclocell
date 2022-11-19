
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
                CaixaTexto().SemBorda("E-mail", "Digite seu ", email, Icons.email, 25),
                const SizedBox(height: 45),
                CaixaTexto().SemBorda("Senha", "Digite sua ", senha, Icons.vpn_key, 25),
                const SizedBox(height: 40),
                BotaoTexto(
                  corTexto: Colors.red.shade600,
                  label: "Recuperar a senha",
                  tamFont: 25,
                  decoracao: TextDecoration.underline,
                  acaoBotao: "recuperacao1",
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                    
                    Botao(
                      corBotao: Colors.grey.shade200,
                      label: "Cadastrar",
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
                  children: const [
                    Texto(
                      label: 'CicloCell',
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







                  