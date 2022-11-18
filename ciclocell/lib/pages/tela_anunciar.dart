

import '../pages/tela_principal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      // menu lateral
      endDrawer: Drawer(
        backgroundColor: Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Sergio'), 
              accountEmail: const Text('sergio@hotmail.com'),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            const Texto(label: 'Aumentar a performace', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Tempo da bateria', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Avaliar o aparelho', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Backup de arquivos', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Central de ajuda', tamFonte: 18),
            const SizedBox(height: 40,),
            const Texto(label: 'Sobre', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Sair', tamFonte: 18),
          ],
        ),
      ),
        //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CicloCell',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 15, 234, 22),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),

          //corpo da página
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/homem.png',
                      height: 60,
                    ),
                    const SizedBox(height: 20),
                    const Texto(label: 'Sergio', tamFonte: 25),
                  ],
                ),
                const SizedBox(height: 25),
                const Texto(label: 
                  'Preencha com os dados do aparelho', tamFonte: 18,
                ),
                const SizedBox(height: 40),
                CampoTexto(
                  label: '*Marca',
                  font: 25, 
                  hintLabel: 'Digite a marca do aparelho ', 
                  iconepref: Icons.mobile_friendly,
                  variavel: marca,
                  ),
                const SizedBox(height: 20,),
                CampoTexto(
                  label: '*Modelo',
                  font: 25, 
                  hintLabel: 'Digite o modelo do aparelho ', 
                  iconepref: Icons.mobile_friendly,
                  variavel: modelo,
                  ),
                const SizedBox(height: 20,),
                CampoTexto(
                  label: '*Memória Ram',
                  font: 25, 
                  hintLabel: 'Digite a quantidade de memória ram', 
                  iconepref: Icons.mobile_friendly,
                  variavel: memoriaRam,
                  ),
                const SizedBox(height: 20,),
                CampoTexto(
                  label: '*Memória interna',
                  font: 25, 
                  hintLabel: 'Digite a quantidade de memória interna', 
                  iconepref: Icons.mobile_friendly,
                  variavel: memoriaInt,
                  ), 
                const SizedBox(height: 75,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Botao(corBotao: Colors.white, nomeBotao: 'Voltar', acaoBotao: TelaPrincipal()),
                    const SizedBox(width: 80),
                    const Botao(corBotao: Colors.white, nomeBotao: 'Proximo'),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: '* Campos obrigatórios', tamFonte: 14),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 250),
                    const Texto(label: 'CicloCell', tamFonte: 16),
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

