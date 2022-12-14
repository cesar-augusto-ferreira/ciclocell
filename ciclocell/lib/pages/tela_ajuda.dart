

import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/Retorna_dados.dart';
import '../controller/ajuda_controller.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({Key? key}) : super(key: key);

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {

  var ajuda = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //appbar
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

        // menu lateral
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

        //corpo da p??gina
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Central de ajuda?", 
                  tamFont: 25,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Diga, em que posso ajudar?", 
                  tamFont: 18,
                ),
                const SizedBox(height: 100),
                CaixaTexto().ComBorda("*D??vida", "Digite a sua d??vida ", ajuda, Icons.mobile_friendly,18),
                const SizedBox(height: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Botao(
                      corBotao: Colors.white, 
                      label: "Voltar", 
                      acaoBotao: "principal",
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
                        if(ajuda.text.isNotEmpty) {                  
                          AjudaController().criarAjuda(context,ajuda.text);                                
                          Navigator.pushReplacementNamed(context, "ajuda2");
                        } else {
                          return Mensagem().erro(context, "Digite sua d??vida para continuar");
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                const Texto(label: "* Campos obrigat??rios", tamFont: 14),
                const SizedBox(height: 50),
                
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
