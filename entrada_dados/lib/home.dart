import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          children: <Widget>[
            TextField(
              //keyboardType: TextInputType.emailAddress
              //keyboardType: TextInputType.datetime
              //keyboardType: TextInputType.number,
              keyboardType: TextInputType.text,
              /*onTap: (){
                print('Clicou no campo de texto');
              },*/
              /*onChanged: (String texto){
                print('Digitou: $texto');
              },*/
              //onSubmitted: (String text){},
              obscureText: false,
              decoration: InputDecoration(
                labelText: "Digite algo",
              ),
              //maxLength: 5,
              //maxLengthEnforced: false,
              style: TextStyle(
                color: Colors.red,
                //backgroundColor: Colors.orange
              ),
              controller: _textEditingController,
            ),
            RaisedButton(
              child: Text(
                "Clique aqui!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
              color: Colors.green,
              onPressed: (){
              print(_textEditingController.text);
            })
          ],
        ),
      ),
    );
  }
}