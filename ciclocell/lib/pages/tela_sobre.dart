
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/retorna_dados.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //appbar
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
        backgroundColor: Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Usuario().nome(18, Colors.white), 
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            BotaoTexto( 
              label: "Aumentar Performace",
              corTexto: Colors.white,
              tamFont: 20,
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
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: "Minha conta", 
              corTexto: Colors.white,
              tamFont: 20,
            ),
            const SizedBox(height: 15,),
            BotaoTexto(
              label: 'Sair',
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "login",
            ),
          ],
        ),
      ),

        // corpo
      backgroundColor: Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: 'Sobre', 
                  tamFont: 25),
                const SizedBox(height: 25),
                const Texto(
                  label: "Somos otimizadores de desempenho para aparelhos com sistema oparecional Android.\n"
                    "O tema escolhido foi um aplicativo que melhora o desempenho de smartphonese outros aparelhos com sistema android.\n"
                    "A ferramenta desenvolvida busca otimizar o desempenho de aparelhos seminovos. Atravez de um "
                    "aplicativo leve, com poucos cliques e também pode ser feito um checkup da vida util da bateria. ",
                  tamFont: 18,
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: 'Desenvolvedores:', 
                  tamFont: 25,
                ),
                const SizedBox(height: 30),
                Image.asset(
                  "lib/images/20210420_151839.jpg",
                  height: 200,
                ),
                const SizedBox(height: 5),
                const Texto(
                  label: "César Augusto Ferreira", 
                  tamFont: 20,
                ),
                const SizedBox(height: 40),
                Image.asset(
                  "lib/images/Foto-Atual.jpg",
                  height: 200,
                ),
                const SizedBox(height: 5),
                const Texto(
                  label: "Deusdedith Bastos Souza Junior", 
                  tamFont: 20,
                ),
                const SizedBox(height: 50),
                Botao(
                  corBotao: Colors.grey.shade200, 
                  label:"Home", 
                  acaoBotao: "principal",
                ),
                const SizedBox(height: 30),
                Row(
                  children: const[
                    SizedBox(width: 250),
                    Texto(
                      label: 'CicloCell', 
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


