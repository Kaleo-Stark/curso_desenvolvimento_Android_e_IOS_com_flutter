import 'package:flutter/material.dart';

import 'dart:math';

import 'package:cara_ou_coroa/resultado.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void _exibir_resultado(){

    var itens = ['cara', 'coroa'];

    var numero = Random().nextInt(itens.length);

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Resultado(itens[numero])
      ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('imagens/logo.png'),
            GestureDetector(
              onTap: _exibir_resultado,
              child: Image.asset('imagens/botao_jogar.png'),
            )
          ]
        ),
      ),
    );
  }
}