import "package:flutter/material.dart";
import 'EmptyPage.dart';

class TargetPage extends StatefulWidget {
  @override
  _TargetPageState createState() => _TargetPageState();
}

int countOfEvents = 11;
int maxCountOfEvents = 50;

class _TargetPageState extends State<TargetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Цели и развитие"),
      ),
      body: Column(children: [
        Container(
          height: 200.0,
          width: double.infinity,
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
            BoxShadow(
                color: Color(0x350000000),
                spreadRadius: 5.0,
                blurRadius: 10.0,
                offset: Offset(5, 5))
          ]),
          child: Column(
            children: [
              Text("Ваши текущие цели:",
                  style: TextStyle(color: Colors.deepOrange)),
              Text(
                  "Пройденные спортивные события (${countOfEvents} из ${maxCountOfEvents})"),
              LinearProgressIndicator(
                value: countOfEvents / maxCountOfEvents,
                minHeight: 10,
              ),
              Text("${((countOfEvents / maxCountOfEvents) * 100).round()}%"),
            ],
          ),
        ),
        Container(
          height: 200.0,
          width: double.infinity,
          child: Text("Скоро здесь что-то будет."),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
            BoxShadow(
                color: Color(0x350000000),
                spreadRadius: 5.0,
                blurRadius: 10.0,
                offset: Offset(5, 5))
          ]),
        )
      ]),
    );
  }
}
