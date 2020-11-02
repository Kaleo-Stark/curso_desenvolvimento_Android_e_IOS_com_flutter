import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("images/padrao.png");
  var _resultado = "___________";
  var _corResultado = Colors.black;

  void _opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    setState(() {
      this._imagemApp = AssetImage("images/$escolhaApp.png");

      if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
          (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
          (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
        this._resultado = "Parabéns !!! Você ganhou :)";
        this._corResultado = Colors.green;
      } else if ((escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
          (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
          (escolhaApp == "papel" && escolhaUsuario == "pedra")) {
        this._resultado = "Você perdeu :(";
        this._corResultado = Colors.red;
      } else {
        this._resultado = "Empatamos ;)";
        this._corResultado = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JokenPo"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 50),
              child: Text(
                "Escolha do app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Image(image: this._imagemApp),
            Padding(
                padding: EdgeInsets.only(top: 70, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Resultado:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      this._resultado,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: this._corResultado),
                    ),
                  ],
                )),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 20),
                  child: Text(
                    "Escolha uma opção abaixo!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("pedra"),
                      child: Image.asset("images/pedra.png", height: 100),
                    ),
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("papel"),
                      child: Image.asset("images/papel.png", height: 100),
                    ),
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("tesoura"),
                      child: Image.asset("images/tesoura.png", height: 100),
                    ),
                    /*Image.asset("images/pedra.png", height: 100),
                Image.asset("images/papel.png", height: 100),
                Image.asset("images/tesoura.png", height: 100),*/
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
