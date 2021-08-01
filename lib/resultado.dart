import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return ('Foi bom!');
    } else if (pontuacao < 16) {
      return ('Very gud');
    } else if (pontuacao < 20) {
      return ('Quase um god');
    } else {
      return ('Gode gode gode');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              'Reiniciar',
              style: TextStyle(
                color: Colors.blue,
              ),
            ))
      ],
    );
  }
}
