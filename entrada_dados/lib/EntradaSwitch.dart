import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _notificacoes = false;
  bool _imagensAutomaticas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados")
      ),
      body: Column(
        children: <Widget>[
          SwitchListTile(
            title: Text("Receber notificações?"),
            value: _notificacoes, 
            onChanged: (bool valor){
              setState(() {
                _notificacoes = valor;
              });
            }
          ),

          SwitchListTile(
            title: Text("Carregar imagens automaticamente?"),
            subtitle: Text("Irá carregar e salvar todas as imagens recebidas."),
            value: _imagensAutomaticas, 
            onChanged: (bool valor){
              setState(() {
                _imagensAutomaticas = valor;
              });
            }
          ),
          
          RaisedButton(
            child: Text(
              "Salvar configurações",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white
              ),
            ),
            color: Colors.blue,
            onPressed: (){
              print("CONFIGURAÇÕES \n*notificacão: $_notificacoes \n*carregar imagens automaticamente: $_imagensAutomaticas");
            }
          )
          
          /*Switch(
            value: _valorSwitch, 
            onChanged: (bool valor){
              setState(() {
                _valorSwitch = valor;
              });
            }
          ),
          Text("Receber notificações?")*/
        ],
      ),
    );
  }
}