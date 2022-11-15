

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class AppBar extends StatefulWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
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
            const SizedBox(height: 10),
            const Texto(label: 'Aumentar a performace', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Tempo da bateria', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Avaliar o aparelho', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Backup de arquivos', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Central de ajuda', tamFonte: 18),
            const SizedBox(height: 40),
            const Texto(label: 'Sobre', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Sair', tamFonte: 18),
          ],
        ),
      ),
      //appbar
      
      
    );
    
  }
}











