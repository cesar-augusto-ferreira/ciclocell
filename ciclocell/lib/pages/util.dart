


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';

  //textos

class Texto extends StatelessWidget {
  final String label;
  final dynamic tamFont;

  const Texto({Key? key, required this.label, required this.tamFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.white,
        fontSize: tamFont,
      ),
    );   
  }

}


class Mensagem {

  // mensagem de erro

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


  // mensagem de sucesso

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

}


class CaixaTexto {

  // caixa de texto com borda

  Widget ComBorda(String label,String hintLabel, dynamic variavel, IconData iconepref, dynamic tamFont) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: TextField(
        controller: variavel,
        style: GoogleFonts.roboto(
          fontSize: tamFont,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          labelText: label,
          hintText: "$hintLabel ",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          prefixIcon: iconepref == null ? null : Icon(
            iconepref, color: Colors.white,
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

    // caixa de texto sem borda

  Widget SemBorda(String label,String hintLabel, dynamic variavel, IconData iconepref, dynamic tamFont, bool senha) {

    return Padding(
      padding : const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: TextField(
          controller: variavel,
          style: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            labelText: label,
            hintText: "$hintLabel $label",
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
          prefixIcon: iconepref == null ? null : Icon(
            iconepref, color: Colors.white,
          ),
          labelStyle: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
        ),
      )
    );
  }

   

}

class Botao extends StatelessWidget {
  final Color corBotao;
  final String label;
  final dynamic acaoBotao;

  const Botao ({Key? key, required this.corBotao, required this.label, this.acaoBotao}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(120, 50),
        primary: corBotao,
      ), 
      child:  Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),

      onPressed: () => { 
        Navigator.pushReplacementNamed(context,acaoBotao),
      },
    );

  }
  
}


 // botão de texto

class BotaoTexto extends StatelessWidget {
  final Color corTexto;
  final dynamic label;
  final dynamic acaoBotao;
  final dynamic decoracao;
  final dynamic tamFont;

  const BotaoTexto({Key? key, required this.corTexto, this.acaoBotao, this.label, this.decoracao, this.tamFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  TextButton(
      child: Text(
        label,
        style: GoogleFonts.roboto(
          color: corTexto,
          fontSize: tamFont,
          decoration: decoracao,
        ),
      ),
      onPressed: () => {
        Navigator.pushReplacementNamed(context,acaoBotao),
      }
    );
  }

}


class BotaoSair extends StatefulWidget {
  const BotaoSair({Key? key}) : super(key: key);

  @override
  State<BotaoSair> createState() => _BotaoSairState();
}

class _BotaoSairState extends State<BotaoSair> {
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      child: Text(
        "sair",
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => {
        showDialog(
          barrierColor: const Color.fromRGBO(68, 56, 71, 90),
          context: context, 
          builder: (context) => AlertDialog(
            backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
            content: Container(
              padding: const EdgeInsets.all(4),
              color: const Color.fromRGBO(68, 56, 71, 1),
              width: 600,
              height: 140,
              child: Column(
                children: [
                  Text(
                    "Deseja sair?",
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [                    
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 40),
                          primary: Colors.grey.shade200,
                        ), 
                        child: const Text(
                          "Sim",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () { 
                          LoginController().logout();
                          Navigator.pushReplacementNamed(context,"login");
                        },
                      ),
                      const SizedBox(width: 70),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 40),
                          primary: Colors.grey.shade200,
                        ), 
                        child: const Text(
                          "Não",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => { 
                          Navigator.pushReplacementNamed(context,"principal"),
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      }   
    );
  }
}


/*class CaixaSenha extends StatefulWidget {

  final String label;
  final String hintLabel;
  final dynamic variavel;
  final IconData? iconepref;
  final dynamic tamFont;
  final bool senha;
  const CaixaSenha({Key? key, required this.label, required this.hintLabel, this.variavel, this.iconepref, this.tamFont, required this.senha}) : super(key: key);

  @override
  State<CaixaSenha> createState() => _CaixaSenhaState();
  
}

class _CaixaSenhaState extends State<CaixaSenha> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: TextField(
          controller: variavel,
          style: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            labelText: label,
            hintText: "$hintLabel $label",
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
          prefixIcon: iconepref == null ? null : Icon(
            iconepref, color: Colors.white,
          ),
          labelStyle: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
        ),
      )
    );


    
  }
}*/


/*class CampoSenha extends StatelessWidget {

  final String label;
  final String hintLabel;
  final dynamic variavel;
  final IconData? iconepref;
  final dynamic tamFont;
  bool mostrar = false;
  
  const CampoSenha({Key? key, required this.label, required this.hintLabel, this.variavel, this.iconepref, this.tamFont}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: TextField(
          controller: variavel,
          style: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            labelText: label,
            hintText: "$hintLabel $label",
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
          prefixIcon: iconepref == null ? null : Icon(
            iconepref, color: Colors.white,
          ),
          suffixIcon: GestureDetector(
            child: Icon(
              Icons.visibility_off,
              color: Colors.white,
            ),
          ),
          labelStyle: GoogleFonts.roboto(
            fontSize: tamFont,
            color: Colors.white,
          ),
        ),
        obscureText: false,
      )
    );
  }

    
  }*/



