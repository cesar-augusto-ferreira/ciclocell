import 'package:flutter/material.dart';
import '../pages/Retorna_dados.dart';
import '../pages/util.dart';

class TelaNuvem extends StatefulWidget {
  const TelaNuvem({Key? key}) : super(key: key);

  @override
  State<TelaNuvem> createState() => _TelaNuvemState();
  
}

class _TelaNuvemState extends State<TelaNuvem> {
  @override
  Widget build(BuildContext context) {
    dynamic nuvem;
    
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Center(
          child: Column(
            children: [
              const Texto(label: "Salvar com seguran??a! ", tamFont: 20),
              const SizedBox(height: 20),
              const Texto(
                label: " Digite seu e-mail abaixo: \n",
                tamFont: 20,
              ),
              const SizedBox(height: 50),
              CaixaTexto().ComBorda("e-mail nuvem", "Digite seu", nuvem, Icons.abc, 18,),
                const SizedBox(height: 25),
              Image.asset(
                "lib/images/nuvem.png",
                height: 150,
              ),
              const SizedBox(height: 50),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Botao(
                    corBotao: Colors.white,
                    label: "Comprar",
                    acaoBotao: "compranuvem1",
                  ),
                  SizedBox(width: 60),
                  Botao(
                    corBotao: Colors.white,
                    label: "Salvar",
                    acaoBotao: "nuvem2",
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
