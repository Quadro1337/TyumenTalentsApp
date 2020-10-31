import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class DefaultEvent extends StatelessWidget {
  final String date;
  final String age;
  final String category;
  final String value;
  final String title;
  const DefaultEvent(
      {Key key, this.value, this.age, this.date, this.category, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
          BoxShadow(
              color: Color(0x350000000),
              spreadRadius: 5.0,
              blurRadius: 10.0,
              offset: Offset(5, 5))
        ]),
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
        padding: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
        child: Column(children: [
          Row(children: [
            Text("Название: "),
            Text(title, style: TextStyle(color: Colors.deepOrange))
          ]),
          Row(children: [
            Text("Категория: "),
            Text(category, style: TextStyle(color: Colors.deepOrange))
          ]),
          Row(children: [
            Text("Возраст: "),
            Text(age, style: TextStyle(color: Colors.deepOrange))
          ]),
          Row(children: [
            Text("Дата: "),
            Text(date, style: TextStyle(color: Colors.deepOrange))
          ]),
          Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(value)),
        ]));
  }
}
