

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';
import '../main.dart';

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

class CampoCadastro extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;
  final dynamic variavel; 
  final dynamic senha;
  final dynamic font;

  const CampoCadastro({Key? key, required this.label, this.hintLabel, this.iconepref, 
  this.iconesuf, required this.variavel, this.senha, required this.font, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: TextField(
          controller: variavel,
          obscureText: (senha!= null) ? true : false,
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            labelText: label,
            hintText: '$hintLabel $label',
            // ignore: prefer_const_constructors
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
            fontSize: font,
            color: Colors.white,
          ),
        ),
      )
    );
    
  }
}

class CampoTexto extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;
  final dynamic variavel; 
  final dynamic? senha; 

  const CampoTexto({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf, required this.variavel, this.senha}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: TextField(
        controller: variavel,
        obscureText: (senha != null) ? true : false,
        decoration: InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          labelText: label,
          hintText: '$hintLabel $label',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          prefixIcon: iconepref == null ? null : Icon(
            iconepref, color: Colors.white,
          ),
          suffixIcon: iconesuf == null ? null : Icon(
            iconesuf , color: Colors.white,
          ),
          fillColor: Colors.white,
          filled: true,
          labelStyle: GoogleFonts.roboto(
            fontSize: 25,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      )
    );
    
  }
}

class Botao extends StatelessWidget {
  final Color corBotao;
  final String nomeBotao;
  final dynamic acaoBotao;

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

      onPressed: () => { 
        Navigator.pushNamed(context,acaoBotao),
      },
    );
  }
}


class BotaoTexto extends StatelessWidget {
  final Color corTexto;
  final String texto;
  final dynamic acaoBotao;
  final dynamic decoracao;

  const BotaoTexto({Key? key, required this.corTexto, this.acaoBotao, required this.texto, this.decoracao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(
                  child: Text(
                    texto,
                    style: GoogleFonts.roboto(
                      color: corTexto,
                      fontSize: 25,
                      decoration: decoracao,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context,acaoBotao),
                  }
    );
    
  }
}







void erro(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.redAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

//
// MENSAGEM DE SUCESSO
//
void sucesso(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.greenAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}










