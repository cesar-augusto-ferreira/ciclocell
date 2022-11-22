import 'package:flutter/material.dart';
import '../pages/Retorna_dados.dart';
import '../pages/util.dart';


class TelaNuvem2 extends StatefulWidget {
  const TelaNuvem2({Key? key}) : super(key: key);

  @override
  State<TelaNuvem2> createState() => _TelaNuvem2State();
}

class _TelaNuvem2State extends State<TelaNuvem2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const BotaoTexto(
              label: "CicloCell",
              corTexto: Color.fromARGB(255, 15, 234, 22),
              acaoBotao: "principal",
              tamFont: 35,
            ),
            Column(
              children: [
                const SizedBox(width: 130),
                Image.asset(
                  "lib/images/homem.png",
                  height: 30,
                  ),
                Usuario().nome(18, Colors.white),
              ],
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
              currentAccountPicture: Image.asset('lib/images/homem.png'),
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
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Center(
          child: Column(
            children: [
              const Texto(
                label: 'Conteúdo enviado para nuvem de: ',
                tamFont: 20,
              ),                 
              const SizedBox(height: 20),
              const Texto(
                label: ' sergio@hotmail.com',
                tamFont: 30,
              ),
              const SizedBox(height: 25),
              Image.asset(
                'lib/images/nuvem.png',
                height: 150,
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  SizedBox(width: 105),
                  Botao(
                    corBotao: Colors.white,
                    label: 'Home',
                    acaoBotao: "principal",
                  ),
                ],
              ),
              SizedBox(height: 250),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Texto(label: 'CicloCell', tamFont: 16),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

