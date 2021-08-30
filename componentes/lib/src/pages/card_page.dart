import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}

Widget _cardTipo2() {

  final card = Container(
    //clipBehavior: Clip.antiAlias,

    child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        /*Image(
          image: NetworkImage('https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg') 
        ),*/
        Container(
          padding: EdgeInsets.all(10.0),
          child: 
            Text('No tengo idea de qué lugar es')
          )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0) 
        )
      ]
    ),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blueGrey,),
          title: Text('Soy el título de la tarjeta'),
          subtitle: Text('Pues... no sé... esto es un subtitulo... algo largo, eso si, no sé xD y algo más'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('Ok')),
            TextButton(onPressed: (){}, child: Text('Cancelar')),
          ],
        )
      ],),
  );
}