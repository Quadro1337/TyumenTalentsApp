import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'ContentPage.dart';

class DefaultEvent extends StatelessWidget {
  final String date;
  final String age;
  final String category;
  final String value;
  final String title;
  const DefaultEvent(
      {Key key, this.value, this.age, this.date, this.category, this.title})
      : super(key: key);
  _getContent() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                  color: Color(0x350000000),
                  spreadRadius: 5.0,
                  blurRadius: 10.0,
                  offset: Offset(5, 5))
            ]),
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        padding:
            EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0, bottom: 20.0),
        child: Column(children: [
          Row(children: [
            Text("Название: ", textScaleFactor: 1.25),
            Text(
              title,
              style: TextStyle(color: Colors.deepOrange),
              textScaleFactor: 1.25,
            )
          ]),
          Row(children: [
            Text("Категория: ", textScaleFactor: 1.25),
            Text(category,
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.25)
          ]),
          Row(children: [
            Text("Возраст: ", textScaleFactor: 1.25),
            Text(age,
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.25)
          ]),
          Row(children: [
            Text("Дата: ", textScaleFactor: 1.25),
            Text(date,
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.25)
          ]),
          Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                value,
                textScaleFactor: 1.15,
              )),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ContentPage(_getContent(), Container())));
        },
        child: _getContent());
  }
}
