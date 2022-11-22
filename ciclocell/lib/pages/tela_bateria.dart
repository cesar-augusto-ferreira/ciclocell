import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/Retorna_dados.dart';

class TelaBateria extends StatefulWidget {
  const TelaBateria({Key? key}) : super(key: key);

  @override
  State<TelaBateria> createState() => _TelaBateriaState();
}

class _TelaBateriaState extends State<TelaBateria> {
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Center(
          child: Column(
            children: [
              const Texto(label: 'Tempo de bateria!', tamFont: 20),
              const SizedBox(height: 20),
              const Texto(
                  label: ' Que tal saber quanto tempo de vida útil ainda'
                      ' tem a bateria do seu aparelho.',
                  tamFont: 20),
              const SizedBox(height: 30),
              Image.asset(
                'lib/images/reciclagem.png',
                height: 150,
              ),
              const SizedBox(height: 30),
              const Botao(
                  corBotao: Colors.white,
                  label: 'Iniciar teste',
                  acaoBotao: "bateria2"),
            ],
          ),
        ),
      ),
    );
  }
}
