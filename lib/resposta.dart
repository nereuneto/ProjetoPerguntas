import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoClicado;

  Resposta(this.texto, this.quandoClicado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            child: Text(texto),
            onPressed: quandoClicado,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            )));
  }
}
