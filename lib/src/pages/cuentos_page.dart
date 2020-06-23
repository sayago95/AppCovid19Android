import 'package:flutter/material.dart';

import 'package:componentes/src/pages/crear_cards.dart';
import 'package:componentes/src/pages/videos.dart';
import 'package:componentes/src/pages/viewPDF.dart';

class  CuentosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrearCards crearCards = new CrearCards();
    CrearVideos crearVideos = new CrearVideos();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Cuentos',style: TextStyle(fontSize: 23)),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          crearCards.cardPrincipal('https://www.unicef.org/venezuela/sites/unicef.org.venezuela/files/styles/hero_mobile/public/Portada-cuento-covid-2.png?itok=CBgghNTb'),
          
          SizedBox(height: 30.0),

          crearVideos.crearVideoTitulo(
            titulo: 'Rosa contra coronavirus',
            dirVideo: 'https://youtu.be/Z9w6B_PpYjo'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearVideoTitulo(
            titulo: 'Lavate las Manos',
            dirVideo: 'https://youtu.be/IrZ_QUh3C4U'
          ),

          SizedBox(height: 30.0),

          crearVideos.crearVideoTitulo(
            titulo: 'Mi heroe eres tú',
            dirVideo: 'https://youtu.be/f8VTcoX_uFg'
          ),

          SizedBox(height: 30.0),
          crearVideos.crearVideoTitulo(
            titulo: 'Escudo protector contra coronavirus',
            dirVideo: 'https://youtu.be/vgrotkrBfls'
          ),

          SizedBox(height: 30.0),
          
          RaisedButton(
            padding: EdgeInsets.all(10.0),
            onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewpdf()));
            },
            color: Colors.deepOrangeAccent[200],
            child: Text('Alicia contra el coronavirus PDF', style: TextStyle( color: Colors.white,fontSize: 20.0),),
          ),

          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  
  

  
}