import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState(){
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {

    final TextStyle _estiloTexto = new TextStyle(fontSize: 25);

    int _conteo = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 1.4,
        ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Número de clicks: ', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto)
            ]
          )
        ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() {
              _conteo = 0;
            });
          },
        ),

        Expanded(child: SizedBox()),

        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _conteo--;
            });
          },
        ),

        SizedBox(width: 5.0,),

        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _conteo++;
            });
          },
        ),
      ],
    );
  }
}