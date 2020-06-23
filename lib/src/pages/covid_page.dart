import 'package:flutter/material.dart';

import 'package:componentes/src/pages/videos.dart';
import 'package:componentes/src/pages/crear_cards.dart';

class  CovidPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();
    CrearVideos crearVideo = new CrearVideos();

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pink,
      centerTitle: true,
      title: Text('¿Qué es el COVID19?',style: TextStyle(fontSize: 23)),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardPrincipal2(
            dirImage: 'https://i.ytimg.com/vi/prHuClGHtmY/maxresdefault.jpg',
            descripcion: 'A finales de 2019, un nuevo tipo de coronavirus, comenzó a enfermar a personas con síntomas similares a la gripe. La enfermedad se llama coronavirus-19 o COVID-19, para abreviar. El virus se propaga fácilmente y ahora ha afectado a personas en muchos países. Para saber más mira los siguientes videos:'
          ),

          SizedBox(height: 30.0),

          crearVideo.crearCardVideo(
            dirVideo: 'https://youtu.be/J6HLlOSJuGM'
          ),

          SizedBox(height: 30.0),
          
          crearVideo.crearCardVideo(
            dirVideo: 'https://youtu.be/PlpVBvFvlnU'
          ),
        ],
      ),
    );
  }
}