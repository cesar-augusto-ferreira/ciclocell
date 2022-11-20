

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/util.dart';

class AvaliacaoController {

  void criarAvaliacao(context, marca, modelo, memoriaRam, memoriaInt, telaTroc, telaTrinc, 
    traseira, detalhes, bateria) {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection("avaliação").add({
      "uid": uid,
      "marca": marca,
      "modelo": modelo,
      "memoria ram": memoriaRam,
      "memoria interna": memoriaInt,
      "tela trocada": telaTroc,
      "tela trincada": telaTrinc,
      "traseira com riscos": traseira,
      "outros detalhes": detalhes,
      "tem a bateria boa" : bateria,
    });
    Mensagem().sucesso(context, "Avaliação feita com sucesso.");
    
  }

}