import 'package:flutter/material.dart';
import 'package:projet_3/component/ListItem.dart';
import 'package:projet_3/models/item.dart';

class ColorPage extends StatelessWidget {
  final List<Item> members = const [
    Item(
        sound: "black.wav",
        jName: "Buraku",
        eName: "balck",
        image: "assets/images/colors/color_black.png"),
    Item(
        sound: "brown.wav",
        jName: "Chairo",
        eName: "brown",
        image: "assets/images/colors/color_brown.png"),
    Item(
        sound: "dusty_yellow.wav",
        jName: "Hokori ppoi kiiro",
        eName: "dusty yellow",
        image: "assets/images/colors/color_dusty_yellow.png"),
    Item(
        sound: "gray.wav",
        jName: "Gure",
        eName: "gray",
        image: "assets/images/colors/color_gray.png"),
    Item(
        sound: "green.wav",
        jName: "Midori",
        eName: "green",
        image: "assets/images/colors/color_green.png"),
    Item(
        sound: "red.wav",
        jName: "Aka",
        eName: "red",
        image: "assets/images/colors/color_red.png"),
    Item(
        sound: "yellow.wav",
        jName: "kido ",
        eName: "yellow",
        image: "assets/images/colors/yellow.png"),
    Item(
        sound: "white.wav",
        jName: "Shiroi",
        eName: "white",
        image: "assets/images/colors/color_white.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: members[index],
            color: Color(0xff79359F),
            itemType: "colors",
          );
        },
        itemCount: members.length,
      ),
    );
  }
}
