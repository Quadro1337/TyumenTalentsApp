import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'BigButton.dart';
import 'ContentPage.dart';

class Person {
  final int id;
  final String name;
  final int rating;
  @override
  Person(this.id, this.name, this.rating);
}

List<Person> persons = [
  Person(1, "123", 100),
  Person(2, "456", 200),
];

class RatingCell extends StatelessWidget {
  final int id;
  final int rating;
  final String name;
  const RatingCell({Key key, this.name, this.id, this.rating})
      : super(key: key);
  _getUserInfo() {}

  _getContent(context) {
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Text("ТОП-", textScaleFactor: 1.25),
                Text((id + 1).toString(),
                    style: TextStyle(color: Colors.deepOrange),
                    textScaleFactor: 1.25)
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Рейтинг: ", textScaleFactor: 1.25),
                Text((rating).toString(),
                    style: TextStyle(color: Colors.deepOrange),
                    textScaleFactor: 1.25)
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Имя: ", textScaleFactor: 1.25),
                Text(name,
                    style: TextStyle(color: Colors.deepOrange),
                    textScaleFactor: 1.25)
              ]),
            ),
            BigButton(
                child: Text("Посмотреть профиль", textScaleFactor: 1.25),
                callback: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ContentPage(Container(), Container())));
                })
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  ContentPage(_getContent(context), Container())));
        },
        child: _getContent(context));
  }
}
