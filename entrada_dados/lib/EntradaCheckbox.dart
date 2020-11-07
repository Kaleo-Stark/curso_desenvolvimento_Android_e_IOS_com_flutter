import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados")
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /*Text("Comida brasilerira"),
            Checkbox(
              value: _valorCheckBox, 
              onChanged: (bool valor){
                setState(() {
                  _valorCheckBox = valor;
                });
              }
            ),*/

            CheckboxListTile(
              title: Text("Comida brasileira"),
              subtitle: Text("A melhor comida do mundo."),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira, 
              onChanged: (bool valor){
                setState((){
                  _comidaBrasileira = valor;
                });
              }
            ),
            CheckboxListTile(
              title: Text("Comida mexicana"),
              subtitle: Text("A melhor comida do mundo."),
              ///activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana, 
              onChanged: (bool valor){
                setState((){
                  _comidaMexicana = valor;
                });
              }
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              color: Colors.blue,
              onPressed: (){
                print("Comida brasileira: $_comidaBrasileira \n Comida mexicana: $_comidaMexicana");
              },
            )
          ],
        ),
      ),
    );
  }
}