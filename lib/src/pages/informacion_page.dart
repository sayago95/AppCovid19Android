import 'package:flutter/material.dart';

import 'package:componentes/src/pages/crear_cards.dart';

class  InformacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pink,
      centerTitle: true,
      title: Text('Información de la Aplicación',style: TextStyle(fontSize: 20)),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardcombinada2(
            dirImage: 'assets/perfil.jpeg',
            titulo: ' Información del desarrollador:',
            subtitulo: '\n - Miguel Angel Sayago Arcos \n\n - Ingeniero en Tecnologías de la Información \n\n - Facultad de Ciencias de la Computación \n\n - Benemérita Universidad Autónoma de Puebla'
          ),

          SizedBox(height: 30.0),

          crearCards.cardInformacionC(
            titulo: 'Versión',
            subtitulo: '\n Versión de la aplicación: 1.0. \n \n La aplicación fue hecha con el lenguaje de programación Dart y el FrameWork Flutter en su versión 1.17.1.\n',
            sizeTitulo: 25.0,
            sizeSub: 20.0
          ),

          SizedBox(height: 30.0),



        ],
      ),
    );
  }
}