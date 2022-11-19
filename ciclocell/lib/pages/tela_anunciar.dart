

import '../pages/tela_principal.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';

class TelaAnunciar extends StatefulWidget {
  const TelaAnunciar({Key? key}) : super(key: key);

  @override
  State<TelaAnunciar> createState() => _TelaAnunciarState();
}

class _TelaAnunciarState extends State<TelaAnunciar> {
  var marca = TextEditingController();
  var modelo = TextEditingController();
  var memoriaRam = TextEditingController();
  var memoriaInt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              'CicloCell',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 15, 234, 22),
              ),
            ),
            Column(
              children: [
                SizedBox(width: 150),
                Image.asset(
                  'lib/images/homem.png',
                  height: 30,
                  ),
                Usuario().nome(18),
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
              accountName: Usuario().nome(18), 
              accountEmail: Usuario().email(18),
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

          //corpo da página
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                
                const Texto(
                  label: "Anunciar", 
                  tamFont: 30,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Preencha com os dados do aparelho", 
                  tamFont: 18,
                ),
                const SizedBox(height: 40),
                CaixaTexto().ComBorda("*Marca", "Digite a marca do aparelho ", marca, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Modelo", "Digite o modelo do aparelho ", modelo, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Memória Ram", "Digite a quantidade de memória ram", memoriaRam, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Memória interna", "Digite a quantidade de memória interna", memoriaInt, Icons.mobile_friendly,18), 
                const SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Botao(
                      corBotao: Colors.white, 
                      label: "Voltar", 
                      acaoBotao: "principal",
                    ),
                    SizedBox(width: 80),
                    Botao(
                      corBotao: Colors.white, 
                      label: "Proximo",
                      acaoBotao: "anunciar2",
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: '* Campos obrigatórios', tamFont: 14),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Texto(
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

