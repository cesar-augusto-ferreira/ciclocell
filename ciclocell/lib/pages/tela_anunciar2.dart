

import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';
import '../controller/anuncio_controller.dart';
import '../pages/retorna_dados.dart';

class TelaAnunciar2 extends StatefulWidget {

  static const routeName = "anunciar2";

  const TelaAnunciar2({Key? key}) : super(key: key);

  @override
  State<TelaAnunciar2> createState() => _TelaAnunciar2State();
}

class _TelaAnunciar2State extends State<TelaAnunciar2> {
  bool telaTroc = false;
  bool telaTrinc = false;
  bool traseira = false;
  bool detalhes = false;
  bool bateria = false;
  bool valor = true;

  @override
  Widget build(BuildContext context) {

    final argumentosA = ModalRoute.of(context)!.settings.arguments as ArgumentosAnuncio;

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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Anunciar", 
                  tamFont: 30,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Marque apenas os itens que for ", 
                  tamFont: 18,
                ),
                const Texto(
                  label: "correspondente ao estado do aparelho", 
                  tamFont: 18,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: "P??gina 2/2", 
                  tamFont: 16,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "A tela foi trocada?", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 70),
                    Checkbox(
                      value: telaTroc,
                      onChanged: (valor) {              
                        setState(() {                          
                          telaTroc= valor!;                          
                        });                       
                      },
                    ),
                    const SizedBox(width: 10),
                    const Texto(
                      label: "Sim", 
                      tamFont: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "A tela est?? trincada? ", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 52),
                    Checkbox(
                      value: telaTrinc,
                      onChanged: (valor) {                                          
                        setState(() {                          
                          telaTrinc = valor!;                        
                        });                                                
                      },
                    ),
                    const SizedBox(width: 10),
                    const Texto(
                      label: "Sim", 
                      tamFont: 18,
                    ), 
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "A bateria esta boa?", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 62),
                    Checkbox(
                      value: bateria,
                      onChanged: (valor) {                    
                        setState(() {                         
                          bateria = valor!;                          
                        });                                            
                      },
                    ),                    
                    const SizedBox(width: 10),
                    const Texto(
                      label: "Sim", 
                      tamFont: 18,
                    ), 
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Traseira com riscos?", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 62),
                    Checkbox(
                      value: traseira,
                      onChanged: (valor) {                                        
                        setState(() {                        
                          traseira = valor!;                          
                        });                                              
                      },
                    ),                    
                    const SizedBox(width: 10),
                    const Texto(
                      label: "Sim", 
                      tamFont: 18,
                    ), 
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Outro detalhe no aparelho?", 
                      tamFont: 18,
                    ),
                    const SizedBox(width: 4,),
                    Checkbox(
                      value: detalhes,
                      onChanged: (valor) {                     
                        setState(() {                       
                          detalhes = valor!;                         
                        });                                      
                      },
                    ),
                    const SizedBox(width: 10),
                    const Texto(
                      label: "Sim", 
                      tamFont: 18,
                    ), 
                  ],
                ),
                const SizedBox(height: 75,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Voltar", 
                      acaoBotao: "anunciar1",
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
                        AnuncioController().criarAnuncio(context,argumentosA.marca, argumentosA.modelo, argumentosA.memoriaRam,
                          argumentosA.memoriaInterna, telaTroc, telaTrinc, traseira, detalhes, bateria);                                
                        Navigator.pushReplacementNamed(context, "anunciar3");
                        
                      },
                    ),
                  ],
                ),
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




