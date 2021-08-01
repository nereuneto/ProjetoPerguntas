import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Verde', 'pontuacao': 7},
        {'texto': 'Azul', 'pontuacao': 2},
        {'texto': 'Vermelho', 'pontuacao': 3},
        {'texto': 'Amarelo', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Lola', 'pontuacao': 3},
        {'texto': 'Mitchu', 'pontuacao': 5},
        {'texto': 'Nina', 'pontuacao': 1},
        {'texto': 'Jackao', 'pontuacao': 6},
      ]
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': [
        {'texto': 'Palmeiras', 'pontuacao': 8},
        {'texto': 'Santos', 'pontuacao': 1},
        {'texto': 'Internacional', 'pontuacao': 2},
        {'texto': 'Vasco', 'pontuacao': 3},
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Pode ser desse jeito também
    //for (var textoResposta in respostas) {
    //  widgets.add(Resposta(textoResposta, _responder));
    //}

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
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
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
