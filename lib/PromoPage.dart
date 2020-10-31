import "package:flutter/material.dart";
import 'package:flutter_app/EmptyPage.dart';

class DefaultPromo extends StatelessWidget {
  final String title;
  final String owner;
  final String description;
  final String date;
  const DefaultPromo(
      {Key key, this.title, this.owner, this.date, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EmptyPage()));
        },
        child: Container(
            // decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
            decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
              BoxShadow(
                  color: Color(0x350000000),
                  spreadRadius: 5.0,
                  blurRadius: 10.0,
                  offset: Offset(5, 5))
            ]),
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Row(children: [
                Text("Название: "),
                Text(title, style: TextStyle(color: Colors.deepOrange))
              ]),
              Row(children: [
                Text("Представитель: "),
                Text(owner, style: TextStyle(color: Colors.deepOrange))
              ]),
              Row(children: [
                Text("Дата: "),
                Text(date, style: TextStyle(color: Colors.deepOrange))
              ]),
              Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(description)),
            ])));
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
