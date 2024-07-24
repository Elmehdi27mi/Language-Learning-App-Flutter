import 'package:flutter/material.dart';
import 'package:projet_3/component/ListItem.dart';
import 'package:projet_3/models/item.dart';

class NumbersPage extends StatelessWidget {
  final List<Item> numbers = const [
    Item(
        sound: "number_one_sound.mp3",
        jName: "ichi",
        eName: "one",
        image: "assets/images/numbers/number_one.png"),
    Item(
        sound: "number_two_sound.mp3",
        jName: "ni",
        eName: "two",
        image: "assets/images/numbers/number_two.png"),
    Item(
        sound: "number_three_sound.mp3",
        jName: "san",
        eName: "three",
        image: "assets/images/numbers/number_three.png"),
    Item(
        sound: "number_four_sound.mp3",
        jName: "shi",
        eName: "four",
        image: "assets/images/numbers/number_four.png"),
    Item(
        sound: "number_five_sound.mp3",
        jName: "go",
        eName: "five",
        image: "assets/images/numbers/number_five.png"),
    Item(
        sound: "number_six_sound.mp3",
        jName: "roku",
        eName: "six",
        image: "assets/images/numbers/number_six.png"),
    Item(
        sound: "number_seven_sound.mp3",
        jName: "sebun",
        eName: "seven",
        image: "assets/images/numbers/number_seven.png"),
    Item(
        sound: "number_eight_sound.mp3",
        jName: "hachi",
        eName: "eight",
        image: "assets/images/numbers/number_eight.png"),
    Item(
        sound: "number_nine_sound.mp3",
        jName: "kyu",
        eName: "nine",
        image: "assets/images/numbers/number_nine.png"),
    Item(
        sound: "number_ten_sound.mp3",
        jName: "ju",
        eName: "ten",
        image: "assets/images/numbers/number_ten.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Colors.orange,
            itemType: "numbers",
          );
        },
      ),
    );
  }
}
