import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = [];

    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider());
    }

    

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((e) {
        
        return Column(
          children: [
            ListTile(
              title: Text(e),
              subtitle: Text('Subtitulo'),
              leading: Icon(Icons.ad_units_sharp),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
          ],
        );
    }).toList();

  }
}