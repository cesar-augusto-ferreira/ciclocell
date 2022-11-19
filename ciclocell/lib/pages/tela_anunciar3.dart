
import '../pages/util.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class TelaAnunciar3 extends StatefulWidget {
  const TelaAnunciar3({Key? key}) : super(key: key);

  @override
  State<TelaAnunciar3> createState() => _TelaAnunciar3State();
}

class _TelaAnunciar3State extends State<TelaAnunciar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menu lateral
      



        //corpo
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
       body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 55),
                const Texto(
                  label: "Seu aparelho foi anunciado", 
                  tamFont: 25,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: "Com sucesso por", 
                  tamFont: 25,
                ),
                const SizedBox(height: 25),
                const Texto(
                  label: " R\$ 1399,00 ", 
                  tamFont: 25,
                ),
                const SizedBox(height: 60),
                Image.asset(
                  "lib/images/ok.png",
                  height: 120,
                ),
                const SizedBox(height: 115),
                Botao(
                  corBotao: Colors.grey.shade200, 
                  label: "Home", 
                  acaoBotao: "principal"),
                const SizedBox(height: 80),
                 Row(
                  children: const [
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


