
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../controller/login_controller.dart';

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
  var confEmail = TextEditingController();
  
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
                  label: 'Confirme o e-mail*', 
                  iconepref: Icons.email_outlined, 
                  variavel: confEmail, 
                  font: 25,
                ), 
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child:  const Text(
                        "Cancelar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () => {Navigator.pushNamed(context, "login")}, 
                    ),
                    const SizedBox(width: 50),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child:  const Text(
                        "Próximo",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        //LoginController().criarConta(context, nome.text, email.text, senha.text);
                        }, 
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: '* Campos obrigatórios', tamFonte: 14),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 250),
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


