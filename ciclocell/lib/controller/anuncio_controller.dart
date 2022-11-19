

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/util.dart';

class AnuncioController {

  void criarAnuncio(context, marca, modelo, memoriaRam, memoriaInt, telaTroc, telaTrinc, traseira, detalhes) {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection('anuncios').add({
      "uid": uid,
      "nome": marca,
      "rg": modelo,
      "cpf": memoriaRam,
      "email": memoriaInt,
      "cidade": telaTroc,
      "endereço": telaTrinc,
       "complemento": traseira,
      "celular": detalhes,
    });
    Mensagem().sucesso(context, "Anuncio criado com sucesso.");
    //Navigator.pop(context);
  }



}