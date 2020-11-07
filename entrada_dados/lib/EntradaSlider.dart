import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorSlider = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Entrada de dados")),
        body: Container(
          padding: EdgeInsets.all(60),
          child: Column(
            children: <Widget>[
              Slider(
                value: _valorSlider, 
                min: 0, max: 10, 
                label: "Valor selecionado $_valorSlider",
                activeColor: Colors.blue,
                inactiveColor: Colors.yellow,
                divisions: 10,
                onChanged: (double valor) {
                setState(() {
                  _valorSlider = valor;
                });
              }),
              RaisedButton(
                child: Text(
                  "Salvar valor",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  )
                ),
                color: Colors.blue,
                onPressed: (){
                  print("Valor $_valorSlider");
                }
              )
            ],
          ),
        ));
  }
}
