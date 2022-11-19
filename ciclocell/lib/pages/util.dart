


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


class Usuario {

  // retorna o nome do usuário logado

  Widget nome(dynamic tamFont) {

    return FutureBuilder<String>(
      future: LoginController().retornarNomeUsuario(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text("Error");
          } else if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                fontSize: tamFont,
              ),
            );
          } else {
            return const Text("Empty data");
          }
        } else {
          return Text("State: ${snapshot.connectionState}");
        }
      },
    );

  }

    //retorna o email do usuario logado

  Widget email(dynamic tamFont) {

    return FutureBuilder<String>(
      future: LoginController().retornarEmailUsuario(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text("Error");
          } else if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                fontSize: tamFont,
              ),
            );
          } else {
            return const Text("Empty data");
          }
        } else {
          return Text("State: ${snapshot.connectionState}");
        }
      },
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
        //obscureText: (senha != null) ? true : false,
        style: GoogleFonts.roboto(
          fontSize: tamFont,
          color: Colors.white,
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

  Widget SemBorda(String label,String hintLabel, dynamic variavel, IconData iconepref, dynamic tamFont) {

    return Padding(
      padding : const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: TextField(
          controller: variavel,
          //obscureText: (senha!= null) ? true : false,
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
  final String label;
  final dynamic acaoBotao;
  final dynamic decoracao;
  final dynamic tamFont;

  const BotaoTexto({Key? key, required this.corTexto, this.acaoBotao, required this.label, this.decoracao, this.tamFont}) : super(key: key);

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

    //botao do tipo check

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