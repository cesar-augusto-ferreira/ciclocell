import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/Retorna_dados.dart';

class TelaBateria2 extends StatefulWidget {
  const TelaBateria2({Key? key}) : super(key: key);

  @override
  State<TelaBateria2> createState() => _TelaBateria2State();
}

class _TelaBateria2State extends State<TelaBateria2> {
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
              const Texto(label: 'Sua bateria esta boa!', tamFont: 20),
              const SizedBox(height: 20),
              const Texto(label: ' Tem 70% de vida útil.', tamFont: 30),
              const SizedBox(height: 30),
              Image.asset(
                "lib/images/reciclagem.png",
                height: 150,
              ),
              const SizedBox(height: 30),
              const Botao(
                corBotao: Colors.white,
                label: 'Home',
                acaoBotao: "principal",
              ),
               const SizedBox(height: 230),
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
