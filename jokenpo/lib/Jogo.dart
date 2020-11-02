import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
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
              padding: EdgeInsets.only(top:32, bottom: 16),
              child: Text(
                "Escolha do app",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            GestureDetector(
              onTap: (){print("ola");},
              onDoubleTap: (){print("ola 2");},
              onLongPress: (){print("ola 3");},
              child: Image.asset("images/padrao.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top:32, bottom: 16),
              child: Text(
                "Escolha uma opção abaixo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("images/pedra.png", height: 100),
                Image.asset("images/papel.png", height: 100),
                Image.asset("images/tesoura.png", height: 100),
              ],
            )
          ],
        )
    );
  }
}
