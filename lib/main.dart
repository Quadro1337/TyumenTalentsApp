import "package:fancy_bottom_navigation/fancy_bottom_navigation.dart";
import "package:flutter/material.dart";
import "DefaultPost.dart";
import "DefaultEvent.dart";
import 'myProfile.dart';
import 'myParters.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Таланты 72",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Таланты 72"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.airplay,
              title: "Новости",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(2);
              }),
          TabData(
            iconData: Icons.add_location_alt,
            title: "События",
          ),
          TabData(iconData: Icons.workspaces_filled, title: "Партнеры"),
          TabData(iconData: Icons.account_box, title: "Профиль")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPosts() {
    return [
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "30.10.2020",
          value:
              "Тестовый пост, просто для того чтобы показать как будет выглядеть наше приложение."),
      DefaultPost(
          author: "Сергеев Сергей Сергеевич",
          date: "31.10.2020",
          value:
              "Текст (от лат. textus — ткань; сплетение, сочетание) — зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов. Существуют две основные трактовки понятия «текст»: имманентная (расширенная, философски нагруженная) и репрезентативная (более частная). Имманентный подход подразумевает отношение к тексту как к автономной реальности, нацеленность на выявление его внутренней структуры. Репрезентативный — рассмотрение текста как особой формы представления знаний о внешней тексту действительности. В лингвистике термин «текст» используется в широком значении, включая и образцы устной речи. Восприятие текста изучается в рамках лингвистики текста и психолингвистики. Так, например, И. Р. Гальперин определяет текст следующим образом: «Это письменное сообщение, объективированное в виде письменного документа, состоящее из ряда высказываний, объединённых разными типами лексической, грамматической и логической связи, имеющее определённый моральный характер, прагматическую установку и соответственно литературно обработанное»[1]."),
    ];
  }

  _getEvents() {
    return [
      DefaultEvent(
        title: "Веселые поплавки",
        date: "13.01.2021 - 16.01.2021",
        value:
            "В центральном бассейне пройдет чемпионат по плаванию \"Веселые поплавки\". Если ты смелый, ловкий и умелый, то ты точно станешь самым крутым дельфином в этом водоёме.",
        age: "13-17",
        category: "Плаванье",
      )
    ];
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
                BoxShadow(
                    color: Color(0x350000000),
                    spreadRadius: 5.0,
                    blurRadius: 10.0,
                    offset: Offset(5, 5))
              ]),
              width: double.infinity,
              height: 120.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  TextField(
                    decoration:
                        InputDecoration(labelText: "Введите ключевые слова"),
                  ),
                  RaisedButton(onPressed: () => {}, child: Text("Искать"))
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: _getPosts()))
          ],
        ));
      case 1:
        return SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
                BoxShadow(
                    color: Color(0x350000000),
                    spreadRadius: 5.0,
                    blurRadius: 10.0,
                    offset: Offset(5, 5))
              ]),
              width: double.infinity,
              height: 80.0,
              alignment: Alignment.center,
              child: Text("Скоро здесь что-то будет."),
            ),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: _getEvents()))
          ],
        ));
      case 2:
        return MyPartners();
      case 3:
        return MyProfile(
          column1: [
            Text("ФИО:", textScaleFactor: 1.1),
            Text("Дата рождения:", textScaleFactor: 1.1),
            Text("Номер телефона:", textScaleFactor: 1.1),
            Text("Электронная почта:", textScaleFactor: 1.1)
          ],
          column2: [
            Text("Иванов Иван Иванович",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("01.01.2010",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("+7-123-456-7890",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("ivan_ivanov2010@mail.ru",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1)
          ],
        );
    }
  }
}
