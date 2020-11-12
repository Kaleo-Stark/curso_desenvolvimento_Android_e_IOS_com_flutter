import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _navegarPara(pagina){

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
                    onTap: () => _navegarPara('empresa')
                  ),
                  GestureDetector(
                    child: Image.asset('imagens/menu_servico.png'),
                    onTap: (){

                    }
                  )
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
                    onTap: (){

                    }
                  ),
                  GestureDetector(
                    child: Image.asset('imagens/menu_contato.png'),
                    onTap: (){

                    }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}