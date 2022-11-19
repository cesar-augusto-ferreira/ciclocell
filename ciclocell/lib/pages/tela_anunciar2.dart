
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../pages/util.dart';

class TelaAnunciar2 extends StatefulWidget {
  const TelaAnunciar2({Key? key}) : super(key: key);

  @override
  State<TelaAnunciar2> createState() => _TelaAnunciar2State();
}

class _TelaAnunciar2State extends State<TelaAnunciar2> {
  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menu lateral
     
      

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
                  "Preencha os dados de seu aparelho ", 
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
                    const BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Tela trincada", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 90,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texto(
                      label: "Ralado na traseira", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 50,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Detalhes no aparelho", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 30,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 110,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Voltar", 
                      acaoBotao: "anunciar1",
                    ),
                    const SizedBox(width: 80),
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Proximo", 
                      acaoBotao: "anunciar3",
                    ),
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




