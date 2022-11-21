
import 'package:flutter/material.dart';
import '../pages/util.dart';

class TelaPerformance extends StatefulWidget {
  const TelaPerformance({Key? key}) : super(key: key);

  @override
  State<TelaPerformance> createState() => _TelaPerformanceState();
}

class _TelaPerformanceState extends State<TelaPerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Texto(
              label: 'Aumentar a performance', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(
              label: 'Tempo da bateria', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(
              label: 'Avaliar o aparelho', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(
              label: 'Backup de arquivos', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(
              label: 'Central de ajuda', 
              tamFont: 18,
            ),
            const SizedBox(height: 40,),
            const Texto(
              label: 'Sobre', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(
              label: 'Minha conta', 
              tamFont: 18,
            ),
            const SizedBox(height: 10,),
            const Texto(label: 'Sair', tamFont: 18),
          ],
        ),
      ),

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
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Texto(label: 'Mais performance! ', tamFont: 20),
              const SizedBox(height: 20),
              const Texto(
                label: '   Essa função elimina os cokies, fecha os aplicativos em segundo plano'
                ' e sugere a remoção de aplicativos antigos, que não estão sendo utilizados.', tamFont: 20
              ),
              const SizedBox(height: 30),
              Image.asset(
                'lib/images/forca.png',
                height: 150,                
              ),
              const SizedBox(height:40),
              const Botao(
                corBotao: Colors.white, 
                label: '+ Performance', 
                acaoBotao: "performance2",
              ),


            ],
          ),
        ),
      ),
    );
    
  }
}


 
 