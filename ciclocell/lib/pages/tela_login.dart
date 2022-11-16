import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/util.dart';
import '../controller/login_controller.dart';
import '../main.dart';


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
                CampoCadastro(label: "E-mail", hintLabel: "Digite seu ", 
                  variavel: email, iconepref: Icons.email, font: 25,
                ),
                const SizedBox(height: 45),
                CampoCadastro(label: "Senha", hintLabel: "Digite sua ", variavel: senha, senha: true,
                  iconesuf: Icons.visibility_off_outlined, iconepref: Icons.vpn_key, font: 25,
                ),
                const SizedBox(height: 40),
                TextButton(
                  child: Text(
                    'Esqueceu a senha? ',
                    style: GoogleFonts.roboto(
                      color: Colors.red,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          'Informe seu e-mail',
                          style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        titlePadding: EdgeInsets.all(20),
                        content: Container(
                          width: 350,
                          height: 80,
                          child: Column(
                            children: [
                              CampoCadastro(label: "E-mail", iconepref: Icons.email, 
                                variavel: email, font: 23,
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: Color.fromRGBO(68, 56, 71, 1),
                        actionsPadding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'cancelar',
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.blueAccent.shade700,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent.shade700,
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () async {
                              if (email.text.isNotEmpty) {
                                LoginController().esqueceuSenha(email.text);
                                sucesso(context, 'E-mail enviado com sucesso.');
                              } else {
                                erro(context,
                                    'Informe o e-mail para recuperar a senha.');
                              }

                              Navigator.pop(context);
                            },
                            child: Text(
                              'enviar',
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                         
                        ],
                      ),
                    );
                  },
                ), 
                const SizedBox(height: 80),
                Row(
                  children: [
                    const SizedBox(width: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child:  const Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () => {Navigator.pushNamed(context, "cadastro")}, 
                    ),
                    const SizedBox(width: 50),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child:  const Text(
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
              ],
            ),
          ),
        ),
      ),


    );
    
  }
}