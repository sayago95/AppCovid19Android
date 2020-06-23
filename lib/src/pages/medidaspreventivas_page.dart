import 'package:flutter/material.dart';

import 'package:componentes/src/pages/crear_cards.dart';
import 'package:componentes/src/pages/videos.dart';

class  MedidasPreventivasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();
    CrearVideos crearVideos = new CrearVideos();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Medidas Preventivas',style: TextStyle(fontSize: 23))
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardPrincipal('https://image.freepik.com/vector-gratis/joven-espada-escudo-lucha-infeccion-coronavirus_173653-291.jpg'),
          
          SizedBox(height: 30.0),
          
          crearCards.cardInformacion(
            titulo: '¿Qué hacer para evitar contagiarse?',
            subtitulo: 'El COVID-19 sigue afectando a la población de todos los países. La mayoría de las personas que se infectan padecen una enfermedad leve y se recuperan, pero en otros casos puede ser más grave. Cuide tu salud y protege a los demás a través de las siguientes medidas:',
            sizeTitulo: 23.0,
            sizeSub: 18.0
          ),

          SizedBox(height: 30.0),

          crearCards.cardTipo2(
            dirImage: 'https://static.ktomalek.pl/blog/zdjecie/jak-prawidlowo-myc-rece-ktomalek.jpg',
            titulo: 'Lavarse las manos frecuentemente'
          ),

          SizedBox(height: 30.0),

          crearCards.cardTipo2(
            dirImage: 'https://ul.tuipapr.com/ul/q_auto/Wln3oBv1/6e4f65/Sneeze%20-%20Spanish.png',
            titulo: 'Estornudar o toser correctamente'
          ),

          SizedBox(height: 30.0),

          crearCards.cardTipo2(
            dirImage: 'https://www.elimparcial.com/__export/1585010012971/sites/elimparcial/img/2020/03/23/ets5tfxu4aaw204.jpg_1593579601.jpg',
            titulo: 'Mantener distanciamiento social'
          ),

          SizedBox(height: 30.0),

          crearCards.cardTipo2(
            dirImage: 'https://www.clikisalud.net/wp-content/uploads/2020/04/consejos-no-tocarte-cara-pandemia.jpg',
            titulo: 'Evitar tocarse nariz, boca y ojos'
          ),

          SizedBox(height: 30.0),

          crearCards.cardTipo2(
            dirImage: 'https://previews.123rf.com/images/makc76/makc761612/makc76161200093/69253634-llamar-a-una-ambulancia-coche-a-través-del-teléfono-móvil-el-concepto-de-llamadas-de-emergencia-teléfono-inte.jpg',
            titulo: 'Si te sientes enfermo llama al médico'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/EG1rQT1DXDQ'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/e0pecj7ZCcQ'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/fpL6GXwNoI8'
          ),
        ],
      )
    );
  }

  
  

  
}