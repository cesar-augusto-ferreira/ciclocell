
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../pages/util.dart';

class AjudaController {

  void criarAjuda(context,duvida) {   
    var uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection("duvidas").add({
      "uid": uid,
      "duvida": duvida,
    });
    Mensagem().sucesso(context, "Duvida enviada com sucesso.");
  }
}