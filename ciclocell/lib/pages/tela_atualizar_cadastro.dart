
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var email = TextEditingController();
  var senha = TextEditingController();
  bool _mostrar = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          // Appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            BotaoTexto(
              label: "CicloCell",
              corTexto: Color.fromARGB(255, 15, 234, 22),
              acaoBotao: "principal",
              tamFont: 35,
            ),
          ],
        ),
      ),

        //menu lateral
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Usuario().nome(18,Colors.white), 
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset("lib/images/homem.png"),
            ),
            const SizedBox(height: 10,),
            const BotaoTexto( 
              label: "Aumentar Performance",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "performance1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Tempo da bateria",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "bateria1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Avaliar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "avaliacao1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Anunciar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "anunciar1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Backup de arquivos",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "nuvem1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "ajuda1",
            ),
            const SizedBox(height: 40,),
            const BotaoTexto(
              label: "Sobre", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "sobre",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Atualizar cadastro", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "atualizar1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Minha conta", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "conta",
            ),
            const SizedBox(height: 15),
            const BotaoSair(),
          ],
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
                const SizedBox(height: 2),
                CaixaTexto().SemBorda("email*", "Digite o seu ", email, Icons.document_scanner_outlined, 22, false),
                const SizedBox(height: 4),
                TextField(
                  controller: senha,
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelText: "Senha*",
                    hintText: "Digite sua senha",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.vpn_key,
                      color: Colors.white,
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _mostrar == false ? Icons.visibility_off:
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          _mostrar = ! _mostrar;
                        });
                      },
                    ),
                    labelStyle: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  obscureText: _mostrar == false ? true : false,
                ),
                const SizedBox(height: 30),
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
                        if (nome.text.isNotEmpty && rg.text.isNotEmpty && cpf.text.isNotEmpty && email.text.isNotEmpty && senha.text.isNotEmpty) {
                          Navigator.pushReplacementNamed(
                            context,
                            "atualizar2",
                            arguments: ArgumentosAtualizar(nome.text, rg.text, cpf.text, email.text, senha.text),
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


