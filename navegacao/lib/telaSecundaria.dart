import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
      ),
      body: Column(
        children: <Widget>[
          Text("Segunda tela!!!"),
          Padding(
                padding: EdgeInsets.all(15),
                child: RaisedButton(
                  child: Text(
                    "Ir para tela principal",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  }),
              ),
        ],
      )
    );
  }
}