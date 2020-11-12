import 'package:flutter/material.dart';

import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _navegarPara(pagina) {
    if (pagina == 'empresa') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
    } else if (pagina == 'servico') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TelaServico()));
    } else if (pagina == 'cliente') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TelaCliente()));
    } else if (pagina == 'contato') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TelaContato()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('imagens/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      child: Image.asset('imagens/menu_empresa.png'),
                      onTap: () => _navegarPara('empresa')),
                  GestureDetector(
                      child: Image.asset('imagens/menu_servico.png'),
                      onTap: () => _navegarPara('servico'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      child: Image.asset('imagens/menu_cliente.png'),
                      onTap: () => _navegarPara('cliente')),
                  GestureDetector(
                      child: Image.asset('imagens/menu_contato.png'),
                      onTap: () => _navegarPara('contato'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
