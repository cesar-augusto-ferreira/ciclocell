import 'package:ciclocell/pages/util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NuvemController { 
  
  void criarNuvem(context, p100, p200, p2tb) {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection("nuvem").add({
      "uid": uid,
      "plano100gb": p100,
      "plano200gb": p200,
      "plano2tb": p2tb,
    });
    Mensagem().sucesso(context, "Plano nuvem contratado com sucesso!");
  }
}
