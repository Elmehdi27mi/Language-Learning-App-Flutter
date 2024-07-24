import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projet_3/models/phrase.dart';

class PhraseItem extends StatelessWidget {
  final Phrase phrase;
  final String itemType;
  final Color color;

  const PhraseItem(
      {required this.phrase, required this.itemType, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      margin: EdgeInsets.all(16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Text(
              phrase.jpName,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              phrase.enName,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: "assets/sounds/$itemType/");
            player.play(phrase.sound);
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ]),
    );
  }
}
