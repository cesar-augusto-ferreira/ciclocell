
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/Retorna_dados.dart';


class TelaMinhaConta extends StatefulWidget {
  const TelaMinhaConta({Key? key}) : super(key: key);

  @override
  State<TelaMinhaConta> createState() => _TelaMinhaContaState();
}

class _TelaMinhaContaState extends State<TelaMinhaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            BotaoTexto(
              label: "CicloCell",
              corTexto: Color.fromARGB(255, 15, 234, 22),
              acaoBotao: "principal",
              tamFont: 35,
            ),
          ],
        ),
      ),

        // menu lateral
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Usuario().nome(18,Colors.white), 
              accountEmail: Usuario().email(18, Colors.white),
              currentAccountPicture: Image.asset("lib/images/homem.png"),
            ),
            const SizedBox(height: 10,),
            const BotaoTexto( 
              label: "Aumentar Performance",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "performance1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Tempo da bateria",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "bateria1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Avaliar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "avaliacao1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Anunciar o aparelho",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "anunciar1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Backup de arquivos",
              corTexto: Colors.white, 
              tamFont: 20,
              acaoBotao: "nuvem1",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "ajuda1",
            ),
            const SizedBox(height: 40,),
            const BotaoTexto(
              label: "Sobre", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "sobre",
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Minha conta", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "conta",
            ),
            const SizedBox(height: 15),
            const BotaoSair(),
          ],
        ),
      ),
      
          //corpo da página
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),    
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              children: [
              Container(
                margin: const EdgeInsets.all(2),
                color: Colors.white,
                child: Image.asset(
                  "lib/images/homem.png",
                  width: 150,
                ),
              ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Nome: ", 
                      tamFont: 20,
                    ),
                    Usuario().nome(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Email: ", 
                      tamFont: 20,
                    ),
                    Usuario().email(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "CPF: ", 
                      tamFont: 20,
                    ),
                    Usuario().cpf(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Rg: ", 
                      tamFont: 20,
                    ),
                    Usuario().rg(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Endereço: ", 
                      tamFont: 20,
                    ),
                    Usuario().endereco(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Cidade: ", 
                      tamFont: 20,
                    ),
                    Usuario().cidade(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      label: "Celular: ", 
                      tamFont: 20,
                    ),
                    Usuario().celular(18, Colors.white),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: 'Conta ativa', 
                  tamFont: 18,
                ),
                const SizedBox(height: 40),  
                const Botao(
                  corBotao: Colors.white, 
                  label: 'Voltar', 
                  acaoBotao: "principal",
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [                    
                    Texto(
                      label: "CicloCell", 
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

