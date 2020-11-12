import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Contato"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Image.asset('imagens/detalhe_contato.png'),
                      Text(
                        "Contato",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("E-mail: atendimento@atmconsultoria.com.br")
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("Telefone: (11) 3525-8596")
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("Celular (11) 99586-5236")
                ),
              ],
            ),
          ),
        ));
  }
}