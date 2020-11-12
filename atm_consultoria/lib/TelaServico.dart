import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Serviços"),
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
                      Image.asset('imagens/detalhe_servico.png'),
                      Text(
                        "Nossos serviços",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("Consultoria")
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("Cálculo de preços")
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text("Acompanhamento de projetos")
                ),
              ],
            ),
          ),
        ));
  }
}
