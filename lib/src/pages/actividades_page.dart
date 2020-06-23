import 'package:flutter/material.dart';

import 'package:componentes/src/pages/crear_cards.dart';
import 'package:componentes/src/pages/videos.dart';

class  ActividadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();
    CrearVideos crearVideos = new CrearVideos();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Actividades en cuarentena',style: TextStyle(fontSize: 20)),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardPrincipal('https://i1.wp.com/www.orientacionandujar.es/wp-content/uploads/2017/10/Modificaci%C3%B3n-de-conducta-Rutinas-de-la-ma%C3%B1ana-y-noche.jpg?fit=454%2C234&ssl=1'),
          
          SizedBox(height: 30.0),
          
          crearCards.cardInformacion(
            titulo: '¡Es tiempo de quedarnos en casa!',
            subtitulo: 'Los niños y niñas sabemos que estamos viviendo días diferentes. Por ahora, no vamos a la escuela o colegio y nos toca quedarnos en casa. Pero, pueden ser divertidos para hacer actividades y juegos que, normalmente, no los hacemos. Antes que todo, es importante que sigamos los consejos de los adultos y no salgamos a la calle, que sigamos un horario para hacer las tareas del hogar y las que nos han dejando de parte de la escuela y colegio y ... al cumplir con todo ello, ¡Tendremos tiempo para jugar!',
            sizeTitulo: 25.0,
            sizeSub: 20.0
          ),
          
          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/carlacastagno/carlacastagno1205/carlacastagno120500014/13585378-ni%C3%B1o-y-ni%C3%B1a-de-cocina-en-una-cocina-llena-de-ingredientes-ilustraci%C3%B3n-de-dibujos-animados-para-los-ni%C3%B1os.jpg',
            titulo: 'Preparar galletas, coctel de frutas o ensalada.',
            subtitulo: 'Hacer una receta de fácil preparación con los ingredientes que tengas en casa.'
          ),
          
          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/rawpixel/rawpixel1703/rawpixel170319381/73819948-kinder-l%C3%A4chelnd-gl%C3%BCck-spiel-ballon.jpg',
            titulo: 'Jugar voleibol con un globo',
            subtitulo: 'o decir una letra del abecedario cada vez que golpeas el globo, el reto es llegar a la “z”.'
          ),
          
          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/lenm/lenm1202/lenm120200143/12325628-ilustraci%C3%B3n-de-una-familia-un-juego-de-mesa.jpg',
            titulo: 'Juegos de Mesa ',
            subtitulo: 'memoria, damas chinas, lotería, rompecabezas, etc.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://static.wixstatic.com/media/99a4d9_7db6b257545d404183c6df3fd43ce558.jpg/v1/fit/w_2500,h_1330,al_c/99a4d9_7db6b257545d404183c6df3fd43ce558.jpg',
            titulo: 'Jugar a adivinar gestos o películas',
            subtitulo: 'haciendo mímica para que los demás adivinen.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/am2vectors/am2vectors1607/am2vectors160700065/60314872-yoga-poses-ni%C3%B1os-ilustraci%C3%B3n-vectorial-ni%C3%B1o-de-hacer-ejercicios-postura-de-kid-estilo-de-vida-saludable-para-.jpg',
            titulo: 'Hacer ejercicio o Yoga ',
            subtitulo: 'En un espacio en casa, puedes buscar en internet una clase de baile o yoga e imitarla.'
          ),
          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://pjlibrary.org/getmedia/ca33bd9d-702e-4a83-8bd3-4fdc822dd954/sukkah-fort-with-stuffed-animals.png',
            titulo: 'Montar una cabaña',
            subtitulo: 'Con mantas y muebles construye una cabaña, en ella puedes contar historias o reflexionar.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/adrenalinapura/adrenalinapura1707/adrenalinapura170700069/82512803-ilustraci%C3%B3n-de-una-familia-mirando-pel%C3%ADculas-de-televisi%C3%B3n-en-casa.jpg',
            titulo: 'Cine en casa',
            subtitulo: 'Prepara entradas, palomitas y disfruta de una buena película.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://1.bp.blogspot.com/-XLZXMczscE0/V4-fX8fEuSI/AAAAAAAAK_A/2gZpRfMfAl4Tfalx9DAgOlV0CSxkVKVNACLcB/s1600/IMG_20160720_171949.jpg',
            titulo: 'Equilibrista',
            subtitulo: 'Con una cinta o lana, camina por encima como si fueras un equilibrista. No es tan fácil como parece.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://previews.123rf.com/images/klibbor/klibbor1103/klibbor110300010/8994506-caricatura-pirata-ni%C3%B1o-con-mapa-del-tesoro-.jpg',
            titulo: 'Búsqueda del tesoro',
            subtitulo: 'Esconde un objeto y sitúalo en un plano de tu casa, y a buscar el tesoro.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://i.ytimg.com/vi/g_mURjHTST8/maxresdefault.jpg',
            titulo: 'Veo veo',
            subtitulo: 'Unos de los miembros de la familia dice que mira algo, lo describe y los demás mencionan las cosas que creen que puedan ser esas. Gana quien adivina que es.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardcombinada(
            dirImage: 'https://actividadesinfantil.com/wp-content/uploads/2013/05/juego-de-bolos-reciclados.jpg',
            titulo: 'Botellas caídas',
            subtitulo: 'Llenamos varias botellas vacías con un poco de arena y las colocamos a unos 5 metros de las y los jugadores. Con una pelota tendrán que derribar todas las que puedan. Se deben de organizar por equipos para ver quién gana.'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/c0-tE37IHP4'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/rHTM_-b0F6E'
          ),

          SizedBox(height: 30.0),

        ],
      ),

    );
  }

  
  

  
}