import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projet_3/models/member.dart';

class ItemMember extends StatelessWidget {
  final Member? member;
  final Color? color;

  const ItemMember({this.member, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(member!.image!),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    member!.image!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    member!.eMember!,
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
                    AudioCache(prefix: "assets/sounds/numbers/");
                player.play(member!.sound!);
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
