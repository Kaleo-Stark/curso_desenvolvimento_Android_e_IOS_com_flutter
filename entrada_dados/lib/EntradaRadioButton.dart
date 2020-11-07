import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _valorRadio = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text("Masculino"), 
              value: "M", 
              groupValue: _valorRadio, 
              onChanged: (String valor){
              setState(() {
                  _valorRadio = valor;
              });
            }),
            RadioListTile(
              title: Text("Feminino"), 
              value: "F", 
              groupValue: _valorRadio, 
              onChanged: (String valor){
              setState(() {
                  _valorRadio = valor;
              });
            }),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white
                ),
              ),
              color: Colors.blue,
              onPressed: (){
                print("O valor escolhido foi: $_valorRadio");
              }
            )
            /*Text("Masculino"),
            Radio(value: 'M', groupValue: _valorRadio, onChanged: (String valor){
              setState(() {
                _valorRadio = valor;
              });
            }),
            Text("Feminino"),
            Radio(value: 'F', groupValue: _valorRadio, onChanged: (String valor){
              setState(() {
                _valorRadio = valor;
              });
            }),*/
          ],
        ),
      ),
    );
  }
}
