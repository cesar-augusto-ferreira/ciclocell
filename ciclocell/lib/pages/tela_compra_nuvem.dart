import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';
import '../controller/anuncio_controller.dart';
import '../pages/retorna_dados.dart';
import 'package:ciclocell/pages/tela_compra_nuvem.dart';

class TelaCompra1 extends StatefulWidget {
  

  const TelaCompra1({Key? key}) : super(key: key);

  @override
  State<TelaCompra1> createState() => _TelaCompra1State();
}

class _TelaCompra1State extends State<TelaCompra1> {
  bool telaTroc = false;
  bool telaTrinc = false;
  bool traseira = false;
  bool detalhes = false;
  bool bateria = false;
  bool valor = true;

  @override
  Widget build(BuildContext context) {
     
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
              accountName: Usuario().nome(18, Colors.white),
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const BotaoTexto(
              label: "Aumentar Performace",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Tempo da bateria",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Avaliar o aparelho",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Anunciar o aparelho",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "anunciar1",
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Backup de arquivos",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 40,
            ),
            const BotaoTexto(
              label: "Sobre",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "sobre",
            ),
            const SizedBox(
              height: 15,
            ),
            const BotaoTexto(
              label: "Minha conta",
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(
              height: 15,
            ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  label: "Página 2/2",
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
                          telaTroc = valor!;
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
                      label: "A tela está trincada? ",
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
                    const SizedBox(
                      width: 4,
                    ),
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
                const SizedBox(
                  height: 75,
                ),
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
                        minimumSize: Size(120, 50),
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
