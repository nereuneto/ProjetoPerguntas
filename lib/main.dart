import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
//Método para retornar uma função a partir de uma função (?)
//  void Function() funcao() {
//    return () {
//      print('oi');
//    };

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
