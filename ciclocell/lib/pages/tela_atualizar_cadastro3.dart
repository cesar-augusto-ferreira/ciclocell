
import 'package:ciclocell/pages/Retorna_dados.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';

class TelaAtualizarCadastro3 extends StatefulWidget {
  const TelaAtualizarCadastro3({Key? key}) : super(key: key);

  @override
  State<TelaAtualizarCadastro3> createState() => _TelaCadastro3State();
}

class _TelaCadastro3State extends State<TelaAtualizarCadastro3> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
        //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const BotaoTexto(
          label: "CicloCell",
          corTexto: Color.fromARGB(255, 15, 234, 22),
          acaoBotao: "principal",
          tamFont: 35,
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Atualizar o Cadastro",
                  tamFont: 28,
                ),
                const SizedBox(height: 20),             
                Usuario().nome(22, Colors.white),
                const SizedBox(height: 15),
                const Texto(
                  label: "Seu Cadastro foi atualizado",
                  tamFont: 18,
                ),
                const SizedBox(height: 20),
                const Texto(
                  label: "Use o e-mail", 
                  tamFont: 18,
                ),
                Usuario().email(22, Colors.white),
                const Texto(
                  label: "para fazer o login", 
                  tamFont: 18,
                ),
                const SizedBox(height: 50),
                Image.asset(
                  "lib/images/ok.png",
                ),
                const SizedBox(height: 40),
                const Texto(
                  label: "Obrigado", 
                  tamFont: 16,
                ),
                const SizedBox(height: 40),  
                Botao(corBotao: Colors.grey.shade200, label: "Concluir", acaoBotao: "principal"),
                const SizedBox(height: 70),
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


