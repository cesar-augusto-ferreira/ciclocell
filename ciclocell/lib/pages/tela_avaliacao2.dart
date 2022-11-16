import 'package:app_ciclo_cell/view/tela_avaliacao.dart';
import 'package:app_ciclo_cell/view/tela_avaliacao2.dart';
import 'package:app_ciclo_cell/view/tela_avaliacao3.dart';
import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:app_ciclo_cell/view/tela_cadastro3.dart';
import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TelaAvaliacao2 extends StatefulWidget {
  const TelaAvaliacao2({Key? key}) : super(key: key);

  @override
  State<TelaAvaliacao2> createState() => _TelaAvaliacao2State();
}

class _TelaAvaliacao2State extends State<TelaAvaliacao2> {
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

          //corpo da página
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Texto(label: 'Quanto vale meu celular?', tamFonte: 25),
                const SizedBox(height: 25),
                const Texto(label: 
                  'Preencha os dados de seu aparelho e vamos descobrir qual é'
                    ' o seu preço no mercado de usados', tamFonte: 18),
                const SizedBox(height: 95),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Texto(label: 'Tela trocada', tamFonte: 18),
                    const SizedBox(width: 90,),
                    const BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texto(label: 'Tela trincada', tamFonte: 18),
                    const SizedBox(width: 90,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texto(label: 'Ralado na traseira', tamFonte: 18),
                    const SizedBox(width: 50,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texto(label: 'Detalhes no aparelho', tamFonte: 18),
                    const SizedBox(width: 30,),
                    BotaoCheck(),
                  ],
                ),
                const SizedBox(height: 110,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Botao(corBotao: Colors.white, nomeBotao: 'Voltar', acaoBotao: TelaAvaliacao()),
                    const SizedBox(width: 80),
                    const Botao(corBotao: Colors.white, nomeBotao: 'Proximo', acaoBotao: TelaAvaliacao3()),
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

class CampoCadastroA extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoCadastroA({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        hintText: '$hintLabel',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.white,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.white,
        ),
        labelStyle: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.white,
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


class BotaoCheck extends StatefulWidget {
  const BotaoCheck({Key? key}) : super(key: key);

  @override
  State<BotaoCheck> createState() => _BotaoCheckState();
}

class _BotaoCheckState extends State<BotaoCheck> {
  dynamic checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkValue,
      onChanged: (value) {
        setState(() {
          checkValue = value;
        });
        
      },
      );
    
  }
}