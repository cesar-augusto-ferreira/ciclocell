

import 'package:ciclocell/pages/tela_avaliacao.dart';
import 'package:ciclocell/pages/tela_avaliacao2.dart';
import 'package:ciclocell/pages/tela_cadastro.dart';
import 'package:ciclocell/pages/tela_cadastro3.dart';
import 'package:ciclocell/pages/tela_login.dart';
import 'package:ciclocell/pages/tela_principal.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TelaAvaliacao3 extends StatefulWidget {
  const TelaAvaliacao3({Key? key}) : super(key: key);

  @override
  State<TelaAvaliacao3> createState() => _TelaAvaliacao3State();
}

class _TelaAvaliacao3State extends State<TelaAvaliacao3> {
  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();

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

       body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 55),
                const Texto(label: 'Seu aparelho foi avaliado', tamFonte: 25),
                const SizedBox(height: 25),
                const Texto(label: 'Seu aparelho foi \n\t avaliado em:', tamFonte: 25),
                const SizedBox(height: 25),
                const Texto(label: ' R\$ 1399,00 ', tamFonte: 25),
                const SizedBox(height: 50),
                Image.asset(
                  'lib/images/ok.png',
                  height: 120,
                ),
                 const SizedBox(height: 115),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(corBotao: Colors.white, nomeBotao:'Home', acaoBotao: TelaPrincipal()),
                    const SizedBox(width: 95),
                    Botao(corBotao: Colors.white, nomeBotao:'Anunciar', acaoBotao: TelaAvaliacao(),),
                  ],
                ),
                const SizedBox(height: 50),
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


class Texto extends StatelessWidget {
  final String label;
  final dynamic tamFonte;

  const Texto({Key? key, required this.label, required this.tamFonte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.white,
        fontSize: tamFonte,
      ),
    );   
  }

}

class Botao extends StatelessWidget {
  final Color corBotao;
  final String nomeBotao;
  final dynamic? acaoBotao;

  const Botao({Key? key, required this.corBotao, required this.nomeBotao, this.acaoBotao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(120, 50),
        primary: corBotao,
      ), 
      child:  Text(
        nomeBotao,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),

      onPressed: () { 
        Navigator.push(
          context, MaterialPageRoute(
            builder: (
              BuildContext context
            ) 
            => acaoBotao, 
          )
        );
      },
    );
  }
}