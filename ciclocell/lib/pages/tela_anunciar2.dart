
import 'dart:ffi';

import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';
import '../controller/anuncio_controller.dart';

class TelaAnunciar2 extends StatefulWidget {

  static const routeName = "anunciar2";

  const TelaAnunciar2({Key? key}) : super(key: key);

  @override
  State<TelaAnunciar2> createState() => _TelaAnunciar2State();
}

class _TelaAnunciar2State extends State<TelaAnunciar2> {
  bool telaTroc = true;
 /* var telaTrinc= TextEditingController();
  var traseira = TextEditingController();
  var detalhes = TextEditingController();*/

  @override
  Widget build(BuildContext context) {

    final argumentosA = ModalRoute.of(context)!.settings.arguments as ArgumentosAnuncio;

    return Scaffold(

      // appBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            Text(
              "CicloCell",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 15, 234, 22),
              ),
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
              accountName: Usuario().nome(18), 
              accountEmail: Usuario().email(18),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            const BotaoTexto( 
              label: "Aumentar Performace",
              corTexto: Colors.white,
              tamFont: 20,
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
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: 'Sair',
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "login",
            ),
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
                const Texto(label: 
                  "Anunciar", 
                  tamFont: 30,
                ),
                const SizedBox(height: 25),
                const Texto(label: 
                  "Marque apenas os itens que for sim ", 
                  tamFont: 18,
                ),
                const SizedBox(height: 65),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Texto(
                      label: "Tela trocada", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 90,),
                    Checkbox(
                      value: telaTroc,
                      onChanged: (value) {
                        
                      }), 

                      
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Texto(
                      label: "Tela trincada", 
                      tamFont: 18,
                    ),
                    SizedBox(width: 90,),
                    //BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Texto(
                      label: "Ralado na traseira", 
                      tamFont: 18,
                    ),
                    SizedBox(width: 50,),
                    //BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Texto(
                      label: "Detalhes no aparelho", 
                      tamFont: 18,
                    ),
                    SizedBox(width: 30,),
                    //BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 110,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Voltar", 
                      acaoBotao: "anunciar1",
                    ),
                    const SizedBox(width: 80),
                    /*ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        //minimumSize: Size(120, 50),
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
                        //if (telaTroc.text.isNotEmpty && telaTrinc.text.isNotEmpty && traseira.text.isNotEmpty && detalhes.text.isNotEmpty) {
                          //AnuncioController()..criarAnuncio(context,argumentosA.marca, argumentosA.modelo, argumentosA.memoriaRam,
                         // argumentosA.memoriaInterna, telaTroc.text, telaTrinc.text, traseira.text, detalhes.text);                                
                          //Navigator.pushReplacementNamed(context, "anuncio3", 
                          //);
                        //} else {
                        //  Mensagem().erro(context, "Informe todos os campos para fazer o anúncio.");
                        //}
                      },
                    ),*/
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: const [
                    SizedBox(width: 250),
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




