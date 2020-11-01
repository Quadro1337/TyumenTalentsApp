import "package:flutter/material.dart";
import 'package:flutter_app/BigButton.dart';
import 'package:flutter_app/ContentPage.dart';

class DefaultPromo extends StatelessWidget {
  final String title;
  final String owner;
  final String description;
  final String date;
  final String reference;
  const DefaultPromo(
      {Key key,
      this.title,
      this.owner,
      this.date,
      this.description,
      this.reference = ""})
      : super(key: key);
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
        child: Column(children: [
          Row(children: [
            Text("Название: ", textScaleFactor: 1.25),
            Text(title,
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.25)
          ]),
          Row(children: [
            Text("Представитель: ", textScaleFactor: 1.25),
            Text(owner,
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
              child: Text(description, textScaleFactor: 1.15)),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: BigButton(
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContentPage(
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x350000000),
                                    spreadRadius: 5.0,
                                    blurRadius: 10.0,
                                    offset: Offset(5, 5))
                              ]),
                          width: double.infinity,
                          margin: EdgeInsets.all(20.0),
                          padding: EdgeInsets.all(20.0),
                          height: 680,
                          alignment: Alignment.topCenter,
                          child: Text(
                            "При нажатии на эту кнопку вы должны попасть на сайт представителя акции, где вы сможете получить более подробную информацию.",
                            textScaleFactor: 1.25,
                          ),
                        ),
                        Text("Ошибка"))));
              },
              child: Text("Подробнее"),
            ),
          )
        ]));
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

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Акции"),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Column(children: [
            DefaultPromo(
              title: "Нули и единицы",
              description:
                  "Скидки на курсы по программированию при записи в период акции 30%!",
              date: "07.03.2021-07.04.2021",
              owner: "Витязь",
            ),
            DefaultPromo(
              title: "Нули и единицы",
              description:
                  "Скидки на курсы по программированию при записи в период акции 30%!",
              date: "07.03.2021-07.04.2021",
              owner: "Витязь",
            )
          ])),
    );
  }
}
