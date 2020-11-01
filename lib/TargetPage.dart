import "package:flutter/material.dart";
import 'package:flutter_app/BigButton.dart';
import "ContentPage.dart";

class TargetPage extends StatefulWidget {
  @override
  _TargetPageState createState() => _TargetPageState();
}

class EventOverride {
  final int countOfEvents;
  final int maxCountOfEvents;
  final String name;
  const EventOverride(this.countOfEvents, this.maxCountOfEvents, this.name);
}

const eventsOverride = [
  EventOverride(19, 25, "Спортивные мероприятия"),
  EventOverride(1, 8, "Волонтерские мероприятия"),
];

Widget getItemByItself(it, context) {
  return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(children: [
        Text(it.name + " (${it.countOfEvents} из ${it.maxCountOfEvents})",
            textScaleFactor: 1.1),
        Container(
            padding:
                EdgeInsets.only(top: 3.0, left: 20.0, right: 20.0, bottom: 3.0),
            child: LinearProgressIndicator(
              value: it.countOfEvents / it.maxCountOfEvents,
              minHeight: 10,
            )),
        Text("${((it.countOfEvents / it.maxCountOfEvents) * 100).round()}%",
            textScaleFactor: 1.1)
      ]));
}

Widget getItemByItselfDetail(it, context) {
  return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      padding: EdgeInsets.all(20.0),
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
      child: Column(children: [
        Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(children: [
              Text(it.name + " (${it.countOfEvents} из ${it.maxCountOfEvents})",
                  textScaleFactor: 1.1),
              Container(
                  padding: EdgeInsets.only(
                      top: 3.0, left: 20.0, right: 20.0, bottom: 3.0),
                  child: LinearProgressIndicator(
                    value: it.countOfEvents / it.maxCountOfEvents,
                    minHeight: 10,
                  )),
              Text(
                  "Осталось ${(100.0 - it.countOfEvents / it.maxCountOfEvents * 100.0).round()}%",
                  textScaleFactor: 1.1)
            ])),
        Text(
            "Для того чтобы закончить данное задание вам надо посетить еще ${it.maxCountOfEvents - it.countOfEvents} мероприятий.",
            textScaleFactor: 1.25)
      ]));
}

class EventsOverride {
  static Widget getEventsOverride(context) {
    // parent of all of them
    List<Widget> container = [];

    // return ret;
    eventsOverride.forEach((it) => {
          container.add(FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContentPage(
                        getItemByItselfDetail(it, context), Text(it.name))));
              },
              child: getItemByItself(it, context)))
        });
    return Container(child: Column(children: container));
  }
}

class _TargetPageState extends State<TargetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Цели и развитие"),
      ),
      body: Column(children: [
        Container(
          height: 205.0,
          width: double.infinity,
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          padding: EdgeInsets.all(20.0),
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
          child: Column(
            children: [
              Text("Ваши текущие цели:",
                  style: TextStyle(color: Colors.deepOrange),
                  textScaleFactor: 1.25),
              EventsOverride.getEventsOverride(context),
            ],
          ),
        ),
        Container(
          height: 90.0,
          width: double.infinity,
          child: BigButton(
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContentPage(
                        Container(
                            child: Image.asset("assets/images/diagram.jpg"),
                            width: double.infinity,
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
                                ])),
                        Text("Личные качества", textScaleFactor: 1.1))));
              },
              child: Text("Посмотреть личные качества", textScaleFactor: 1.20),
              icon: Icons.person),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          padding: EdgeInsets.all(20.0),
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
        )
      ]),
    );
  }
}
