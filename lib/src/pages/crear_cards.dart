import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class CrearCards{

  Color anterior;

  
  Widget cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){

                }),
                FlatButton(
                child: Text('Ok'),
                onPressed: (){
                  
                })
            ],
          )
        ],
      ),
    );
  }

  Widget cardInformacion({titulo: String, subtitulo: String, sizeTitulo: Double, sizeSub: Double}) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: Colors.green[200],
      child: Column(
        children: <Widget>[
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black87, fontSize: sizeTitulo)),
            subtitle: Text(subtitulo, textAlign: TextAlign.justify, style: TextStyle(color: Colors.black87, fontSize: sizeSub)),
          ),
        ],
      ),
    );
  }

  Widget cardInformacion2({titulo: String, subtitulo: String}) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: Colors.green[100],
      child: Column(
        children: <Widget>[
          cardPrincipal('https://i.pinimg.com/originals/64/cd/c9/64cdc97b0a3277545c11ec15ee3d797f.jpg'),
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black87, fontSize: 25.0)),
            subtitle: Text(subtitulo, textAlign: TextAlign.justify, style: TextStyle(color: Colors.black87, fontSize: 20.0)),
          ),
        ],
      ),
    );
  }

  Widget cardTipo2({titulo: String, dirImage: String}) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Container(
            child: Text(titulo, style: TextStyle(color: Colors.black, fontSize: 21)),
            padding: EdgeInsets.all(10.0),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            image: NetworkImage(dirImage),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          )
        ],
      ),

    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.greenAccent,
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
        borderRadius: BorderRadius.circular(30.0),
        child: card
      ),
    );
  }

  

  Widget cardPrincipal(String dirImage) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            image: NetworkImage(dirImage),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
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
        borderRadius: BorderRadius.circular(10.0),
        child: card
      ),
    );
  }

  Widget cardPrincipal2({dirImage: String, descripcion: String}) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            image: NetworkImage(dirImage),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            child: Text(descripcion,textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 20)),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green[100],
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
        borderRadius: BorderRadius.circular(10.0),
        child: card
      ),
    );
  }

  Widget cardPrincipalAsset(String dirImage) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            image: AssetImage(dirImage),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
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
        borderRadius: BorderRadius.circular(10.0),
        child: card
      ),
    );
  }

  Widget cardcombinada({titulo: String, subtitulo: String, dirImage: String}) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: Colors.redAccent,
      child: Column(
        children: <Widget>[
          cardPrincipal(dirImage),
          SizedBox(height: 10.0),
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black, fontSize: 25.0,)),
            subtitle: Text(subtitulo, textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 18.0)),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget cardcombinada2({titulo: String, subtitulo: String, dirImage: String}) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: Colors.teal[100],
      child: Column(
        children: <Widget>[
          cardPrincipalAsset(dirImage),
          SizedBox(height: 10.0),
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black, fontSize: 25.0,)),
            subtitle: Text(subtitulo, style: TextStyle(color: Colors.black, fontSize: 18.0)),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget cardInformacionC({titulo: String, subtitulo: String, sizeTitulo: Double, sizeSub: Double}) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: Colors.teal[100],
      child: Column(
        children: <Widget>[
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black87, fontSize: sizeTitulo)),
            subtitle: Text(subtitulo, style: TextStyle(color: Colors.black87, fontSize: sizeSub)),
          ),
        ],
      ),
    );
  }

  Widget cardPreguntas({titulo: String, subtitulo: String}) {

    Color nuevo = randColor();

    while (nuevo == anterior) {
      nuevo = randColor();
    }

    anterior = nuevo;

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      color: nuevo,
      child: Column(
        children: <Widget>[
          ListTile(
            //leading: Icon( Icons.info, color: Colors.blue),
            title: Text(titulo, style: TextStyle(color: Colors.black87, fontSize: 25.0)),
            subtitle: Text(subtitulo, textAlign: TextAlign.justify, style: TextStyle(color: Colors.black87, fontSize: 20.0)),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Color randColor(){

    var rand = new Random();
    var num = rand.nextInt(4);
    Color color;

    if(num == 1)
    {
      color = Colors.greenAccent;
    }
    else if(num == 2)
    {
      color = Colors.amberAccent;
    }
    else if(num==3)
    {
      color = Colors.lightBlueAccent;
    }
    else
    {
      color = Colors.purpleAccent;
    }

    return color;
  }
}
