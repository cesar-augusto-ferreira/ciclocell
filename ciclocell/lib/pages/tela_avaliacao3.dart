
import '../pages/util.dart';
import 'package:flutter/material.dart';
import '../pages/Retorna_dados.dart';

class TelaAvaliacao3 extends StatefulWidget {
  const TelaAvaliacao3({Key? key}) : super(key: key);

  @override
  State<TelaAvaliacao3> createState() => _TelaAvaliacao3State();
}

class _TelaAvaliacao3State extends State<TelaAvaliacao3> {
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
      
        //corpo da página
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
       body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 8),
                const Texto(
                  label: "Quanto vale meu celular?", 
                  tamFont: 25,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Seu celular foi avaliado em", 
                  tamFont: 25,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: " R\$ 1399,00 ", 
                  tamFont: 25,
                ),
                const SizedBox(height: 55),
                Image.asset(
                  "lib/images/ok.png",
                  height: 150,
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: "Obrigado", 
                  tamFont: 25,
                ),
                const SizedBox(height: 75),
                Botao(
                  corBotao: Colors.grey.shade200, 
                  label: "Home", 
                  acaoBotao: "principal",
                ),
                const SizedBox(height: 80),
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


