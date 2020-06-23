import 'package:flutter/material.dart';

import 'package:componentes/src/pages/crear_cards.dart';
import 'package:componentes/src/pages/videos.dart';

class  PreguntasRespuestasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();
    CrearVideos crearVideos = new CrearVideos();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Preguntas y Respuestas',style: TextStyle(fontSize: 20)),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardPrincipal('https://img.freepik.com/vector-gratis/nina-preocupada-nino-hace-preguntas-confunde-encuentra-preguntas-respuestas-dibujos-animados-nina-pensativa_102902-937.jpg?size=626&ext=jpg'),
          
          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿De dónde viene el coronavirus?',
            subtitulo: 'El COVID-19 es un virus nuevo o al menos los científicos no lo habían descubierto todavía. Al igual que otros muchos virus, como el ébola o la gripe porcina, se cree que comenzó en animales y se propagó a los humanos. Los expertos están intentando encontrar la causa pero se apunta al murciélago. Todo apunta a que el foco está en un gran mercado de mariscos y animales vivos en China, en la ciudad de Wuhan.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Por qué está todo el mundo preocupado?',
            subtitulo: 'Es un virus que se ha propagado rápidamente por todo el mundo, ha provocado miles de contagios en personas de muy distintos lugares del mundo, algunos de ellos han enfermado de gravedad e incluso han fallecido. Este virus preocupa porque se desconoce todavía como atajarlo, por su velocidad de contagio y porque ha provocado más muertes que otra enfermedad conocida como SARS provocó entre el año 2002 y 2003.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿El coronavirus es igual que la gripe?',
            subtitulo: 'El coronavirus provoca síntomas similares a la gripe, pero hay varias diferencias entre la gripe común y el COVID19: \n - El coronavirus es una enfermedad más grave que la influenza, sus síntomas son más intensos que la gripe común. \n - Mientras que muchas personas en el mundo han desarrollado inmunidad frente a las cepas de la gripe estacional, para el nuevo virus no hay nadie inmune, por lo que más personas son susceptibles de enfermar. \n -Para la gripe estacional hay vacunas, pero no hay tratamiento todavía para el COVID-19.'
          ),
          
          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Cómo se contagia el coronavirus?',
            subtitulo: 'Según los médicos, la forma de transmisión del virus es por contacto con pacientes que tienen la enfermedad. Se transmite cuando alguien contagiado toseo estornuda y esas gotitas de saliva o secreciones nasales caen sobre otra persona. También pueden contagiarse aquellas personas que tocan una superficie donde han caído esos fluidos y se tocan la boca, la nariz o los ojos.'
          ),
          
          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Cómo puede saber alguien que tiene coronavirus?',
            subtitulo: 'Los síntomas que puede tener alguien con coronavirus son: \n - Fiebre. \n - Tos. \n - Dolor de garganta en algunas personas. \n - Dificultad para respirar.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Y si tengo esos síntomas qué hay que hacer?',
            subtitulo: 'La mayor parte de países han facilitado un número de teléfono para poder contactar con personal sanitario y relatar sus síntomas. De esta manera, se evita que todo el mundo vaya a los hospitales, lo que multiplicaría el número de contagios. Los sanitarios valorarán los síntomas y, enviarán a alguien a tu casa para hacerte la prueba en caso de que los síntomas se desarrollen de forma leve o tendrás que ir al hospital si tienes dificultad para respirar y tu cuadro es más grave.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Qué pasa si tengo el coronavirus?',
            subtitulo: 'Si das positivo en coronavirus, los médicos valorarán tu caso. Según el nivel de gravedad, se plantean varios casos: \n - Si no tienes otras enfermedades graves que pudieran complicar los síntomas del coronavirus, tendrás que estar en casa durante 14 días, el tiempo que dura la cuarentena, y habrás de cuidarte como con cualquier otra gripe, con medicinas para el alivio de los síntomas. \n - Si tienes alguna enfermedad previa, los médicos podrían recomendar tu traslado a un hospitalpara hacerte allí el seguimiento. \n - En caso de que presentes un cuadro grave, con dificultad para respirar, podrían trasladarte a la unidad de cuidados intensivos del hospital para estar controlado las 24 horas del día. '
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Cómo se puede evitar contagiarse de coronavirus?',
            subtitulo: 'Lo que recomiendan los expertos es lavarse las manos de forma frecuente, sobre todo, antes de comer, después de ir al baño, tocar interruptores de la luz en lugares concurridos, inodoros, teclados, usar el transporte público o estar en un lugar público. Este lavado de manos tiene que ser con agua y jabón y debe durar al menos 20 segundos. \n También hay que evite tocarse la nariz, los ojos y la boca y usar pañuelo desechable para cubrirse al toser o estornudar, en su defecto, toser en el interior del codo. \n Es importante explicar a nuestros hijos que no deben tener un contacto directo con otras personas, bien sea adultos o niños, evitando abrazar o besar y manteniendo una distancia prudente con los demás. \n En cuanto a las máscaras, hay poca evidencia que respalde su uso generalizado para aquellos que no están enfermos, aunque sí es recomendable para aquellas personas que tienen síntomas de la enfermedad. '
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Qué hacemos si no podemos ir al colegio por el coronavirus?',
            subtitulo: 'No ir al colegio no significa estar de vacaciones, los profesores han de preparar material para que podamos seguir trabajando en casa y no se retrase demasiado el temario. El colegio podrá enviar esas actividades a través de un aula virtual, por email o por cualquier otro canal de comunicación abierto entre padres y profesores. \n Por lo tanto, además de seguir estudiando y haciendo ejercicios de cada materia durante un tiempo al día, debemos encontrar momentos de ocio y esparcimiento que llenen ese vacío escolar. Leer cuentos, hacer manualidades, juegos de mesa, etc son actividades que podemos seguir mantiendo dentro de casa.'
          ),

          SizedBox(height: 30.0),

          crearCards.cardPreguntas(
            titulo: '¿Podemos salir a jugar fuera de casa?',
            subtitulo: 'Mientras las autoridades de cada país no recomienden lo contrario, es viable salir de casa para jugar, dar un paseo o montar en bicicleta. Sin embargo, se recomienda no juntarte con otros niños de tu urbanización o barrio, si las urbanizaciones están llenas de niños jugando juntos, no tendría mucho sentido la medida de no ir al colegio, ¿no crees? Tampoco es recomendable ir a lugares al aire libre que no estén muy concurridos, has de evitar ir a casas de otros amiguitos y no usar los columpios infantiles públicos.'
          ),

          SizedBox(height: 30.0),
          
          crearVideos.crearCardVideo(
            dirVideo: 'https://youtu.be/AGe0T_NXo7A'
          ),
          
        ],
      ),

    );
  }

  
  

  
}