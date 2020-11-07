import 'package:flutter/material.dart';

//import 'package:entrada_dados/home.dart';
//import 'package:entrada_dados/EntradaCheckbox.dart';
import 'package:entrada_dados/EntradaRadioButton.dart';

void main(){
  runApp(
    MaterialApp(
      //home: Home(),
      //home: EntradaCheckbox()
      home: EntradaRadioButton(),
    )
  );
}