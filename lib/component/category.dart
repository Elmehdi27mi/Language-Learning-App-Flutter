import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? title;
  Color? color;
  Function()? onTap;
  Category({this.title, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: color,
          height: 65,
          width: double.infinity,
          padding: EdgeInsets.only(left: 24),
          alignment: Alignment.centerLeft,
          child: Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )),
    );
  }
}
