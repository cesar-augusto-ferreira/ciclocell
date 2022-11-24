
import 'package:ciclocell/pages/Retorna_dados.dart';
import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import '../main.dart';
import '../pages/util.dart';


class TelaAtualizarCadastro2 extends StatelessWidget {

  static const routeName = "atualizar2";

  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();
  
  TelaAtualizarCadastro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final argumentosAtu = ModalRoute.of(context)!.settings.arguments as ArgumentosAtualizar;
    
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

        //menu lateral
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
              label: "Atualizar cadastro", 
              corTexto: Colors.white,
              tamFont: 20,
              acaoBotao: "atualizar1",
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Texto(
                  label:"Atualizar o cadastro",
                  tamFont: 25,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Preencha os campos abaixo.', 
                  tamFont: 18,
                ),
                const SizedBox(height: 10),
                const Texto(
                  label: 'Página 2/2', 
                  tamFont: 16,
                ),
                const SizedBox(height: 15),
                CaixaTexto().SemBorda("Cidade*", "Digite o nome da sua ", cidade, Icons.location_city_outlined, 22, false),
                const SizedBox(height: 20),
                CaixaTexto().SemBorda("Endereço*", "Digite o seu ", endereco, Icons.house_outlined, 22, false),
                const SizedBox(height: 20),
                CaixaTexto().SemBorda("Complemento", "Digite o ", complemento, Icons.apartment_outlined, 22, false),
                CaixaTexto().SemBorda("Celular*", "Digite o seu ", celular, Icons.smartphone_outlined, 22, false),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Botao(
                      corBotao: Colors.grey.shade200, 
                      label: "Voltar",
                      acaoBotao: "atualizar1",
                    ),
                    const SizedBox(width: 40),
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
                        if (cidade.text.isNotEmpty && endereco.text.isNotEmpty && celular.text.isNotEmpty) {
                          LoginController().atualizarDadosUsuario(context,argumentosAtu.nome, argumentosAtu.rg, argumentosAtu.cpf, argumentosAtu.email, argumentosAtu.senha, cidade.text, endereco.text, complemento.text, celular.text);                                
                          Navigator.pushReplacementNamed(context, "atualizar3");
                        } else {
                          Mensagem().erro(context, "Informe a cidade, endereço e celura para fazer o cadastro.");
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(
                  label: "* Campos obrigatórios", 
                  tamFont: 14,
                ),
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