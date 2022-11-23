

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/util.dart';

class AnuncioController {

  void criarAnuncio(context, marca, modelo, memoriaRam, memoriaInt, telaTroc, telaTrinc, 
    traseira, detalhes, bateria) {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection("anúncios").add({
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
    Mensagem().sucesso(context, "Anúncio criado com sucesso.");
  }

}

// 01