import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projet_3/models/item.dart';

class ListItem extends StatelessWidget {
  final Item? number;
  final Color? color;
  final String? itemType;

  const ListItem({this.number, this.color, this.itemType});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(number!.image!),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number!.jName!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    number!.eName!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Spacer(flex: 1),
            IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: "assets/sounds/$itemType/");
                player.play(number!.sound!);
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ));
  }
}
