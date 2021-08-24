import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloTexto = new TextStyle(fontSize: 25);

  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Mundo'),
        centerTitle: true,
        elevation: 1.4,
        ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Número de clicks: ', style: estiloTexto),
              Text('$conteo', style: estiloTexto)
            ]
          )
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
          //conteo++;
        },
      ),
    );
  }
}