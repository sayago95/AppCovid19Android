import 'package:flutter/material.dart';

import 'package:componentes/src/pages/actividades_page.dart';
import 'package:componentes/src/pages/covid_page.dart';
import 'package:componentes/src/pages/cuentos_page.dart';
import 'package:componentes/src/pages/medidaspreventivas_page.dart';
import 'package:componentes/src/pages/preguntasrespuestas_page.dart';
import 'package:componentes/src/pages/informacion_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( //color letra y barra de estado
        primarySwatch: Colors.blue, 
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text(
            "Aprendamos sobre el Coronavirus",style: TextStyle(color: Colors.white, fontSize: 20)
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var icondata = Icons.add;
    String seccion = 'sin tema';

    switch (position) {
      case 0:
        color = Colors.cyan;
        icondata = Icons.library_books;
        seccion = '¿Qué es el COVID19?';
        break;
      case 1:
        color = Colors.deepPurple;
        icondata = Icons.thumb_up;
        seccion = 'Medidas Preventivas';
        break;
      case 2:
        color = Colors.orange[300];
        icondata = Icons.local_library;
        seccion = 'Cuentos';
        break;
      case 3:
        color = Colors.pinkAccent;
        icondata = Icons.home;
        seccion = 'Actividades Cuarentena';
        break;
      case 4:
        color = Colors.green[600];
        icondata = Icons.question_answer;
        seccion = 'Preguntas y Respuestas';
        break;
      case 5:
        color = Colors.red;
        icondata = Icons.info_outline;
        seccion = 'Acerca de';
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0, top: 5.0),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              switch (position) {
                case 0:
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CovidPage()));
                  break;
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MedidasPreventivasPage()));
                  break;
                case 2:
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CuentosPage()));
                  break;
                case 3:
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ActividadesPage()));
                  break;
                case 4:
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PreguntasRespuestasPage()));
                  break;
                case 5:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InformacionPage()));
                break;
              }
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 70,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(seccion,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}