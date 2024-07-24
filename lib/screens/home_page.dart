import 'package:flutter/material.dart';
import 'package:projet_3/component/category.dart';
import 'package:projet_3/screens/colors_page.dart';
import 'package:projet_3/screens/familyMembers_page.dart';
import 'package:projet_3/screens/numbers_page.dart';
import 'package:projet_3/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            title: "Numbers11",
            color: Colors.orange,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            title: "FamilyMembers",
            color: Colors.green,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            title: "Colors",
            color: Color.fromARGB(255, 104, 83, 153),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }));
            },
          ),
          Category(
            title: "phrases",
            color: Colors.lightBlueAccent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
