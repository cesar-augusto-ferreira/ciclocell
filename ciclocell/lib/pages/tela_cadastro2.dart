
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

       //corpo da página
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Texto(
                  label:"Cadastro",
                  tamFont: 25,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Preencha os campos abaixo.', 
                  tamFont: 18,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Página 2/2', 
                  tamFont: 16,
                ),
                const SizedBox(height: 10),
                CaixaTexto().SemBorda("Cidade", "Digite o nome da sua ", cidade, Icons.location_city_outlined, 22),
                const SizedBox(height: 20),
                CaixaTexto().SemBorda("Endereço", "Digite o seu ", endereco, Icons.house_outlined, 22),
                const SizedBox(height: 20),
                CaixaTexto().SemBorda("Complemento", "Digite o ", complemento, Icons.apartment_outlined, 22), 
                const SizedBox(height: 20),
                CaixaTexto().SemBorda("Celular*", "Digite o seu ", celular, Icons.smartphone_outlined, 22),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Voltar",
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
                      onPressed: () async {
                        if (cidade.text.isNotEmpty && endereco.text.isNotEmpty && celular.text.isNotEmpty) {
                          LoginController().criarConta(context,argumentosC.nome, argumentosC.rg, argumentosC.cpf, 
                          argumentosC.email, argumentosC.senha, cidade.text, endereco.text, complemento.text, celular.text);                                
                          Navigator.pushReplacementNamed(context, "cadastro3", 
                            arguments: ArgumentosCadastro2(argumentosC.nome, argumentosC.email),
                          );
                        } else {
                          Mensagem().erro(context, "Informe a cidade, endereço e celura para fazer o cadastro.");
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: '* Campos obrigatórios', 
                  tamFont: 14,
                ),
                const SizedBox(height: 15),
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