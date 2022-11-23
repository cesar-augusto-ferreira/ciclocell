
import 'package:flutter/material.dart';
import '../pages/Retorna_dados.dart';
import '../main.dart';
import '../pages/util.dart';

class TelaAtualizarCadastro extends StatefulWidget {
  const TelaAtualizarCadastro({Key? key}) : super(key: key);

  @override
  State<TelaAtualizarCadastro> createState() => _TelaAtualizarCadastroState();
}

class _TelaAtualizarCadastroState extends State<TelaAtualizarCadastro> {
  var nome = TextEditingController();
  var rg = TextEditingController();
  var cpf = TextEditingController();
  //var email = TextEditingController();
  var senha = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          // Appbar
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Atualizar o cadastro",
                  tamFont: 25,
                  ),
                const SizedBox(height: 10),
                const Texto(
                  label: "Preencha os campos abaixo.",
                  tamFont: 18,
                ),
                const SizedBox(height: 6),
                const Texto(
                  label: "Página 1/2", 
                  tamFont: 16,
                ),
                const SizedBox(height: 4),
                CaixaTexto().SemBorda("Nome*", "Digite o seu ", nome, Icons.document_scanner_outlined, 22, false), 
                const SizedBox(height: 4),
                CaixaTexto().SemBorda("RG*", "Digite o seu ", rg, Icons.document_scanner_outlined, 22, false),
                const SizedBox(height: 4),
                CaixaTexto().SemBorda("CPF*", "Digite o seu ", cpf, Icons.document_scanner_outlined, 22, false), 
                const SizedBox(height: 8),
                Row(
                  children: [
                    Texto(label: "Email: ", tamFont: 22),

                    Usuario().email(22, Colors.white),
                  ],
                ),
                const SizedBox(height: 10),
                CaixaTexto().SemBorda("Senha*", "Digite a ", senha, Icons.vpn_key, 22, false), 
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Cancelar",
                      acaoBotao: "principal",
                    ),
                    const SizedBox(width: 60),
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
                        if (nome.text.isNotEmpty && rg.text.isNotEmpty && cpf.text.isNotEmpty && senha.text.isNotEmpty) {
                          Navigator.pushReplacementNamed(
                            context,
                            "atualizar2",
                            arguments: ArgumentosAtualizar(nome.text, rg.text, cpf.text, senha.text),
                          );
                        } else {
                          Mensagem().erro(context,
                          "Informe o nome, rg e cpf para fazer o cadastro.");
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


