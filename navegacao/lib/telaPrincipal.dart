import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Principal"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: RaisedButton(
                  child: Text(
                    "Ir para tela secundaria passando Kaleo",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, "/secundaria");
                  }),
              ),
            ],
          ),
        ));
  }
}
