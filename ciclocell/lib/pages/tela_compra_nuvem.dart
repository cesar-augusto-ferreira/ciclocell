import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/util.dart';
import '../pages/retorna_dados.dart';
import '../controller/nuvem_controller.dart';

class TelaCompra1 extends StatefulWidget {
  

  const TelaCompra1({Key? key}) : super(key: key);

  @override
  State<TelaCompra1> createState() => _TelaCompra1State();
}

class _TelaCompra1State extends State<TelaCompra1> {
  bool plano100gb = false;
  bool plano200gb = false;
  bool plano2tb = false;
  bool valor = true;

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Nuvem",
                  tamFont: 30,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Valores para armazenar na nuvem: ",
                  tamFont: 18,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "CicloCell 100GB - 11,00 por mês",
                      tamFont: 15,
                    ),
                    const SizedBox(width: 60),
                    Checkbox(
                      value: plano100gb,
                      onChanged: (valor) {
                        setState(() {
                          plano100gb = valor!;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "CicloCell 200GB - 18,00 por mês ",
                      tamFont: 15,
                    ),
                    const SizedBox(width: 52),
                    Checkbox(
                      value: plano200gb,
                      onChanged: (valor) {
                        setState(() {
                          plano200gb = valor!;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "CicloCell 2TB - 44,99 por mês",
                      tamFont: 15,
                    ),
                    const SizedBox(width: 62),
                    Checkbox(
                      value: plano2tb,
                      onChanged: (valor) {
                        setState(() {
                          plano2tb = valor!;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200,
                      label: "Voltar",
                      acaoBotao: "nuvem1",
                    ),
                    const SizedBox(width: 80),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(120, 50),
                        primary: Colors.grey.shade200,
                      ),
                      child: const Text(
                        "Comprar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () async {
                        NuvemController().criarNuvem(
                            context, plano100gb, plano200gb, plano2tb);
                        if ( plano100gb  == true){
                          String contratado = "Plano 100GB";
                          Navigator.pushReplacementNamed(
                            context,
                            "compranuvem2",                          
                            arguments: ArgumentosNuvem(contratado),
                          );
                        } if ( plano200gb  == true){
                          String contratado = "Plano 200GB";
                           Navigator.pushReplacementNamed(
                            context,
                            "compranuvem2",                          
                            arguments: ArgumentosNuvem(contratado),
                          );
                        } if ( plano2tb  == true){
                          String contratado = "Plano 2TB";
                          Navigator.pushReplacementNamed(
                            context,
                            "compranuvem2",                          
                            arguments: ArgumentosNuvem(contratado),
                          );
                        } 
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 200),
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
