import 'package:flutter/material.dart';
import 'package:projet_3/component/ListItem.dart';
import 'package:projet_3/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<Item> members = const [
    Item(
        sound: "father.wav",
        jName: "Chichiya",
        eName: "father",
        image: "assets/images/family_members/family_father.png"),
    Item(
        sound: "daughter.wav",
        jName: "Musume",
        eName: "daughter",
        image: "assets/images/family_members/family_daughter.png"),
    Item(
        sound: "grand father.wav",
        jName: "Ojisan",
        eName: "Grand Father",
        image: "assets/images/family_members/family_grandfather.png"),
    Item(
        sound: "mother.wav",
        jName: "Hahaoya",
        eName: "mother",
        image: "assets/images/family_members/family_mother.png"),
    Item(
        sound: "grand mother.wav",
        jName: "Sobo",
        eName: "grand mother",
        image: "assets/images/family_members/family_grandmother.png"),
    Item(
        sound: "older bother.wav",
        jName: "Nisan",
        eName: "older brother",
        image: "assets/images/family_members/family_older_brother.png"),
    Item(
        sound: "older sister.wav",
        jName: "Ane ",
        eName: "older sister",
        image: "assets/images/family_members/family_older_sister.png"),
    Item(
        sound: "son.wav",
        jName: "Musuko",
        eName: "son",
        image: "assets/images/family_members/family_son.png"),
    Item(
        sound: "younger brother.wav",
        jName: "ototo",
        eName: "younger brother",
        image: "assets/images/family_members/family_younger_brother.png"),
    Item(
        sound: "younger sister.wav",
        jName: "Imoto",
        eName: "younger sister",
        image: "assets/images/family_members/family_younger_sister.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: members[index],
            color: Color(0xff79359F),
            itemType: "family_members",
          );
        },
        itemCount: members.length,
      ),
    );
  }
}
