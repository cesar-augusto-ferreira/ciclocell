// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/retorna_dados.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "CicloCell",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 15, 234, 22),
              ),
            ),
            Column(
              children: [
                SizedBox(width: 150),
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
        backgroundColor: Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Usuario().nome(18,Colors.white), 
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            BotaoTexto( 
              label: "Aumentar Performance",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "performance1",
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Tempo da bateria",
              corTexto: Colors.white, 
              tamFont: 20,
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Avaliar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "avaliacao1",
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Anunciar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "anunciar1",
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Backup de arquivos",
              corTexto: Colors.white, 
              tamFont: 20,
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(height: 40,),
            BotaoTexto(
              label: "Sobre", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "sobre",
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Minha conta", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "conta",
            ),
            const SizedBox(height: 15),
            BotaoSair(),
          ],
        ),
      ),

        //corpo da tela principal
      backgroundColor: Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/forca.png",
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16),
                    BotaoTexto(
                      label: "Aumentar \n performance",
                      tamFont: 20,
                      corTexto: Colors.white,
                      acaoBotao: "performance1",
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/reciclagem.png",
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    BotaoTexto(
                      label:"Tempo \n da bateria",
                      tamFont: 20,
                      corTexto: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/dolar.png",
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    BotaoTexto(
                      label: "Avaliar \n aparelho",
                      tamFont: 20,
                      corTexto: Colors.white,
                      acaoBotao: "avaliacao1",
                    ),
                  ],
                ),
                  const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/camera.png",
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16),
                    BotaoTexto(
                      label: "Anunciar \n aparelho",
                      tamFont: 20,
                      corTexto: Colors.white,
                      acaoBotao: "anunciar1",
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/nuvem.png",
                      width: 85,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 22),
                    BotaoTexto(
                      label: "Backup \n de arquivos",
                      tamFont: 20,
                      corTexto: Colors.white,                      
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/bate-papo.png",
                      width: 85,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    BotaoTexto(
                      label: "Central \n de ajuda",
                      tamFont: 20,
                      corTexto: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 30),
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

