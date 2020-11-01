import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "ContentPage.dart";

class DefaultPost extends StatelessWidget {
  final String date;
  final String author;
  final String value;
  const DefaultPost({Key key, this.value, this.author, this.date})
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
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  Row(children: [
                    Text("Автор: ", textScaleFactor: 1.25),
                    Text(author,
                        style: TextStyle(color: Colors.deepOrange),
                        textScaleFactor: 1.25)
                  ]),
                  Row(children: [
                    Text("Дата: ", textScaleFactor: 1.25),
                    Text(date,
                        style: TextStyle(color: Colors.deepOrange),
                        textScaleFactor: 1.25)
                  ])
                ],
              )),
          Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(value, textScaleFactor: 1.15)),
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
