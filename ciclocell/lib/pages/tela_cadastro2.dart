
import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import '../main.dart';
import '../pages/util.dart';


class TelaCadastro2 extends StatelessWidget {

  static const routeName = "cadastro2";

  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();

  TelaCadastro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final argumentosC = ModalRoute.of(context)!.settings.arguments as ArgumentosCadastro;

    /*final String nome = argumentosC.nome;
    final String rg = argumentosC.rg;
    final String cpf = argumentosC.cpf;
    final String email = argumentosC.email;
    final String senha = argumentosC.senha;*/
    return Scaffold(
      
        //appbar
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
                const Texto(label: 'Cadastro', tamFonte: 25),
                const SizedBox(height: 10),
                const Texto(label: 'Preencha os campos abaixo.', tamFonte: 18),
                const SizedBox(height: 10),
                const Texto(label: 'Página 2/2', tamFonte: 16),
                const SizedBox(height: 10),
                CampoCadastro(
                  font: 25,
                  label: "Cidade", 
                  hintLabel: 'Digite o nome da sua ', 
                  iconepref: Icons.location_city_outlined,
                  variavel: cidade,
                  ),
                const SizedBox(height: 20,),
                CampoCadastro(
                  font: 22,
                  label: 'Endereço', 
                  hintLabel: 'Digite o seu ', 
                  iconepref: Icons.house_outlined,
                  variavel: endereco,
                  ),
                const SizedBox(height: 20,),
                CampoCadastro(
                  font: 22,
                  label: 'Complemento', 
                  hintLabel: 'Digite o ', 
                  iconepref: Icons.apartment_outlined,
                  variavel: complemento,
                  ), 
                const SizedBox(height: 20,),
                CampoCadastro(
                  font: 22,
                  label: 'Celular*', 
                  hintLabel: 'Digite o seu ', 
                  iconepref: Icons.smartphone_outlined,
                  variavel: celular,
                  ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      nomeBotao: "Voltar",
                      acaoBotao: "cadastro",
                    ),
                    const SizedBox(width: 40),
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

                      onPressed: () async { //nome, rg, cpf, email, senha, cidade, endereco, complemento, celular
                        if (cidade.text.isNotEmpty && endereco.text.isNotEmpty && celular.text.isNotEmpty) {
                          LoginController().criarConta(context,argumentosC.nome, argumentosC.rg, argumentosC.cpf, 
                          argumentosC.email, argumentosC.senha, cidade.text, endereco.text, complemento.text, celular.text);                                
                           Navigator.pushReplacementNamed(context, "cadastro3",
                            arguments: ArgumentosCadastro2(argumentosC.nome, argumentosC.email),
                          );
                        } else {
                          erro(context,
                            "Informe a cidade, endereço e celura para fazer o cadastro.");
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