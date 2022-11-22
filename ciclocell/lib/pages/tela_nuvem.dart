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
              accountName: Usuario().nome(18, Colors.white),
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            BotaoTexto(
              label: "Aumentar Performance",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "performance1",
            ),
            const SizedBox(
              height: 15,
            ),
            BotaoTexto(
              label: "Tempo da bateria",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            BotaoTexto(
              label: "Avaliar o aparelho",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "avaliacao1",
            ),
            const SizedBox(
              height: 15,
            ),
            BotaoTexto(
              label: "Anunciar o aparelho",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "anunciar1",
            ),
            const SizedBox(
              height: 15,
            ),
            BotaoTexto(
              label: "Backup de arquivos",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 40,
            ),
            BotaoTexto(
              label: "Sobre",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "sobre",
            ),
            const SizedBox(
              height: 15,
            ),
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
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Center(
          child: Column(
            children: [
              Texto(label: 'Salvar com segurança! ', tamFont: 20),
              const SizedBox(height: 20),
              Texto(
                label: ' Digite seu e-mail abaixo: \n',
                tamFont: 20,
              ),
              CaixaTexto().ComBorda(
                'e-mail nuvem',
                'Digite seu',
                nuvem,
                Icons.abc,
                18,
              ),
              const SizedBox(height: 25),
              Image.asset(
                'lib/images/nuvem.png',
                height: 150,
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Botao(
                    corBotao: Colors.white,
                    label: 'Comprar',
                    acaoBotao: 'compranuvem',
                  ),
                  SizedBox(width: 60),
                  Botao(
                    corBotao: Colors.white,
                    label: 'Salvar',
                    acaoBotao: 'nuvem2',
                  ),
                ],
              ),
               SizedBox(height: 170),
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
