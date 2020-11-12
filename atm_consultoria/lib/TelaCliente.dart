import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Clientes"),
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
                      Image.asset('imagens/detalhe_cliente.png'),
                      Text(
                        "Clientes",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Image.asset('imagens/cliente1.png')
                ),
                Text("Empresa de software"),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Image.asset('imagens/cliente2.png')
                ),
                Text("Empresa de auditoria")
              ],
            ),
          ),
        ));
  }
}