
import '../main.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';
import '../pages/retorna_dados.dart';

class TelaAvaliacao extends StatefulWidget {
  const TelaAvaliacao({Key? key}) : super(key: key);

  @override
  State<TelaAvaliacao> createState() => _TelaAvaliacaoState();
}

class _TelaAvaliacaoState extends State<TelaAvaliacao> {
  var marca = TextEditingController();
  var modelo = TextEditingController();
  var memoriaRam = TextEditingController();
  var memoriaInt = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const BotaoTexto(
              label: "CicloCell",
              corTexto: Color.fromARGB(255, 15, 234, 22),
              acaoBotao: "principal",
              tamFont: 35,
            ),
            Column(
              children: [
                const SizedBox(width: 130),
                Image.asset(
                  "lib/images/homem.png",
                  height: 30,
                  ),
                Usuario().nome(18, Colors.white),
              ],
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
              currentAccountPicture: Image.asset('lib/images/homem.png'),
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
            ),
            const SizedBox(height: 15,),
            const BotaoTexto(
              label: "Central de ajuda",
              corTexto: Colors.white,
              tamFont: 20,
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label: "Quanto vale meu celular?", 
                  tamFont: 25,
                ),
                const SizedBox(height: 20),
                const Texto(
                  label: "Preencha com os dados do aparelho", 
                  tamFont: 18,
                ),
                const SizedBox(height: 15),
                const Texto(
                  label: "Página 1/2", 
                  tamFont: 16,
                ),
                const SizedBox(height: 30),
                CaixaTexto().ComBorda("*Marca", "Digite a marca do aparelho ", marca, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Modelo", "Digite o modelo do aparelho ", modelo, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Memória Ram", "Digite a quantidade de memória ram", memoriaRam, Icons.mobile_friendly, 18),
                const SizedBox(height: 20,),
                CaixaTexto().ComBorda("*Memória interna", "Digite a quantidade de memória interna", memoriaInt, Icons.mobile_friendly,18), 
                const SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Botao(
                      corBotao: Colors.white, 
                      label: "Voltar", 
                      acaoBotao: "principal",
                    ),
                    const SizedBox(width: 80),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        primary: Colors.grey.shade200,
                      ), 
                      child: const Text(
                        "Enviar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () async { 
                        if (marca.text.isNotEmpty && modelo.text.isNotEmpty && memoriaRam.text.isNotEmpty && memoriaInt.text.isNotEmpty) {
                          Navigator.pushReplacementNamed(
                            context,
                            "avaliacao2",
                            arguments: ArgumentosAvaliacao(marca.text, modelo.text, memoriaRam.text, memoriaInt.text),
                          );
                        } else {
                          Mensagem().erro(context,
                          "Informe todos os campos para ir a página 2.");
                        }
                      },
                    )
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: "* Campos obrigatórios", tamFont: 14),
                const SizedBox(height: 15),
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

