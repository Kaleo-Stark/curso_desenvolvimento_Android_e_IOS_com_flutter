import 'package:flutter/material.dart';

import 'package:navegacao/telaPrincipal.dart'; // Import da tela principal
import 'package:navegacao/telaSecundaria.dart';

void main(){
  runApp(
    MaterialApp(
      home: TelaPrincipal(),
      routes: {
        "/secundaria": (context) => TelaSecundaria()
      },
      initialRoute: "/",
    )
  );
}