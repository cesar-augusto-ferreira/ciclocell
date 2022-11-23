import 'package:ciclocell/pages/Retorna_dados.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/util.dart';

class LoginController {

  // criação de contas no app
  void criarConta(context, nome, rg, cpf, email, senha, cidade, endereco, complemento, celular) {
    FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: senha)
      .then((res) {
    FirebaseFirestore.instance.collection("usuarios").add({
      "uid": res.user!.uid.toString(),
      "nome": nome,
      "rg": rg,
      "cpf": cpf,
      "email": email,
      "cidade": cidade,
      "endereço": endereco,
      "complemento": complemento,
      "celular": celular,
    });
      Mensagem().sucesso(context, "Usuário criado com sucesso.");
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case "email-already-in-use":
          Mensagem().erro(context, "O email já foi cadastrado.");
          break;
        case "invalid-email":
          Mensagem().erro(context, "O email é inválido.");
          break;
        default:
          Mensagem().erro(context, e.code.toString());
      }
    });
  }

  // login no app
  void login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      Mensagem().sucesso(context, "Usuário autenticado com sucesso.");
      Navigator.pushReplacementNamed(context, "principal");
    }).catchError((e) {
      switch (e.code) {
        case "invalid-email":
          Mensagem().erro(context, "O formato do email é inválido.");
          break;
        case 'user-not-found':
          Mensagem().erro(context, "Usuário não encontrado.");
          break;
        case 'wrong-password':
          Mensagem().erro(context, "Senha incorreta.");
          break;
        default:
          Mensagem().erro(context, e.code.toString());
      }
    });
  }

  // recuperar a senha
  Future<void> esqueceuSenha(email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  // sair do app
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  // retorna o nome usuário logado no app
  Future<String> retornarNomeUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["nome"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

// retorna o email usuário logado no app
  Future<String> retornarEmailUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["email"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

  // retorna o cpf do usuário logado no app
  Future<String> retornarCpfUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["cpf"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

  // retorna o rg do usuário logado no app
  Future<String> retornarRgUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["rg"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

  // retorna o endereço do usuário logado no app
  Future<String> retornarEnderecoUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["endereço"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

  // retorna a cidade do usuário logado no app
  Future<String> retornarCidadeUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["cidade"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

  // retorna o celular do usuário logado no app
  Future<String> retornarCelularUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()["celular"];
        } else {
          res = "";
        }
      },
    );
    return res;
  }

}

// retorna o documento do usuário 
  Future<String> retornarDocumentoUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection("usuarios")
        .where("uid", isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs;
        } else {
          res = "";
        }
      },
    );
    return res;
  }
