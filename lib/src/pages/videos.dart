import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CrearVideos{

  Widget crearVideo(){

    String videoURL = 'https://www.youtube.com/watch?v=fUv9gO8t8b4';

    return Container(
      child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
                    flags: YoutubePlayerFlags(
                      mute: false,
                      autoPlay: false,
                    )
                  )
                )

              ],
            ),
          ),

    );
  }

   Widget crearVideoTitulo({titulo: String, dirVideo: String}) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Container(
            child: Text(titulo, style: TextStyle(color: Colors.red[800], fontSize: 20)),
            padding: EdgeInsets.all(10.0),
          ),
          
          YoutubePlayer(
            controller: YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(dirVideo),
            flags: YoutubePlayerFlags(
              mute: false,
              autoPlay: false,
            )

            ),

          )

        ],
      ),

    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.amber[200],
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

  Widget crearCardVideo({dirVideo: String}) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: YoutubePlayer.convertUrlToId(dirVideo),
              flags: YoutubePlayerFlags(
              mute: false,
              autoPlay: false,
              )
            ),
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
        borderRadius: BorderRadius.circular(30.0),
        child: card
      ),
    );
  }









}