

import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String label;
  final dynamic tamFonte;

  const Texto({Key? key, required this.label, required this.tamFonte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.white,
        fontSize: tamFonte,
      ),
    );   
  }

}

class CampoCadastro extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoCadastro({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        hintText: '$hintLabel $label',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.white,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.white,
        ),
        labelStyle: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
    
  }
}













