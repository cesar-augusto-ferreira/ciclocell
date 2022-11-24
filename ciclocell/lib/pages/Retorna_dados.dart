import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';

class Usuario {

  // retorna o nome do usuário logado
  Widget nome(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarNomeUsuario(),
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
                color: corTexto,
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
  Widget email(dynamic tamFont, Color corTexto) {

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
                color: corTexto,
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

   //retorna o cpf do usuario logado
  Widget cpf(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarCpfUsuario(),
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
                color: corTexto,
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

   //retorna o rg do usuario logado
  Widget rg(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarRgUsuario(),
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
                color: corTexto,
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

   //retorna oendereço do usuario logado
  Widget endereco(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarEnderecoUsuario(),
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
                color: corTexto,
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

   //retorna a cidade do usuario logado
  Widget cidade(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarCidadeUsuario(),
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
                color: corTexto,
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

   //retorna o celular do usuario logado
  Widget celular(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarCelularUsuario(),
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
                color: corTexto,
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


//retorna o documento do usuario logado
  Widget documentos(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().retornarDocUsuario(),
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
                color: corTexto,
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
//retorna o documento do usuario logado
 /* Widget email(dynamic tamFont, Color corTexto) {

    return FutureBuilder<String>(
      future: LoginController().,
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
                color: corTexto,
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
  }*/