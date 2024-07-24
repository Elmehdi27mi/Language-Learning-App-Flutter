import 'package:flutter/material.dart';
import 'package:projet_3/component/phraseItem.dart';
import 'package:projet_3/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  final List<Phrase> phrases = [
    Phrase(
      jpName: "Kodoko suru koto o wasurenaide kudasai",
      enName: "dont forget to subscribe",
      sound: "1.wav",
    ),
    Phrase(
      jpName: "Watashi wa puroguramingu daisukidesu",
      enName: "i love programming",
      sound: "2.wav",
    ),
    Phrase(
      jpName: "Puroguraming wa kantandesu",
      enName: "programming is easy",
      sound: "3.wav",
    ),
    Phrase(
      jpName: "Namae wa nandesu ka",
      enName: "what is your name ?",
      sound: "4.wav",
    ),
    Phrase(
      jpName: "Watashi wa anime ga diasukidesu",
      enName: "i love anime",
      sound: "5.wav",
    ),
    Phrase(
      jpName: "Go kibun wa ikagadesu ka ",
      enName: "how are you feeling",
      sound: "6.wav",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
              phrase: phrases[index],
              itemType: "phrases",
              color: Colors.blueAccent);
        },
      ),
    );
  }
}
