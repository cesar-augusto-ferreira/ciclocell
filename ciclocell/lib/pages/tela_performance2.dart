
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/Retorna_dados.dart';

class TelaPerformance2 extends StatefulWidget {
  const TelaPerformance2({Key? key}) : super(key: key);

  @override
  State<TelaPerformance2> createState() => _TelaPerformance2State();
}

class _TelaPerformance2State extends State<TelaPerformance2> {
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Center(
          child: Column(
            children: [
              const Texto(
                label: "Descobrimos! ", 
                tamFont: 20,
              ),
              const SizedBox(height: 30),
              const Texto(
                label: " 33.7 Mb - Cookies \n"
                  " 179,9 Mb - App sem uso recente \n"
                  " 255,6 MB - Fotos e videos", 
                tamFont: 20,
              ),
              const SizedBox(height: 40),
              Image.asset(
                "lib/images/forca.png",
                height: 200,                
              ),
              Row(
                children:const [
                  SizedBox(height:50),
                  Botao(
                    corBotao: Colors.white, 
                    label: "Nuvem",
                    acaoBotao: "nuvem1",
                  ),
                  SizedBox(height:100),
                  SizedBox(width:75),
                   Botao(
                    corBotao: Colors.white, 
                    label: "Limpar",
                    acaoBotao: "performance3",
                  ),
                ],
              ), 
               const SizedBox(height: 100),
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
    );
    
  }
}

     
  
 
 