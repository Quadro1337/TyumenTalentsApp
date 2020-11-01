import "package:flutter/material.dart";
import "package:flutter_app/EmptyPage.dart";
import "TargetPage.dart";
import "FindMentorPage.dart";
import "ProforientationPage.dart";
import "BigButton.dart";
import "ContentPage.dart";
import 'RatingCell.dart';

_getPersonalData() {
  return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(children: [
        Table(children: [
          TableRow(children: [
            Text("Ф.И.О:"),
            Text("Иванов Иван Иванович",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.deepOrange))
          ]),
        ]),
        Table(children: [
          TableRow(children: [
            Text("Дата рождения:"),
            Text("13.07.2011",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.deepOrange))
          ]),
        ]),
        Table(children: [
          TableRow(children: [
            Text("Номер телефона:"),
            Text("+7(123)-456-78-90",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.deepOrange))
          ]),
        ]),
        Table(children: [
          TableRow(children: [
            Text("Электронная почта"),
            Text("ivan_ivanov.2011@mail.ru",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.deepOrange))
          ]),
        ]),
      ]));
}

_getPersonalDataDetail() {
  const double scale = 1.12;
  return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Table(children: [
            TableRow(children: [
              Text("Ф.И.О:", textScaleFactor: scale),
              Text("Иванов Иван Иванович",
                  textScaleFactor: scale,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.deepOrange))
            ]),
          ]),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Table(children: [
              TableRow(children: [
                Text("Дата рождения:", textScaleFactor: scale),
                Text("13.07.2011",
                    textScaleFactor: scale,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange))
              ]),
            ])),
        Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Table(children: [
              TableRow(children: [
                Text("Номер телефона:", textScaleFactor: scale),
                Text("+7(123)-456-78-90",
                    textScaleFactor: scale,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange))
              ]),
            ])),
        Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Table(children: [
              TableRow(children: [
                Text("Электронная почта", textScaleFactor: scale),
                Text("ivan_ivanov.2011@mail.ru",
                    textScaleFactor: scale,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange))
              ]),
            ])),
        Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Table(children: [
              TableRow(children: [
                Text("Место проживания", textScaleFactor: scale),
                Text("г. Тюмень",
                    textScaleFactor: scale,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange))
              ]),
            ])),
        Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Table(children: [
              TableRow(children: [
                Text("Учебное учреждение", textScaleFactor: scale),
                Text("Школа",
                    textScaleFactor: scale,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange))
              ]),
            ])),
      ]));
}

class MyProfile extends StatelessWidget {
  final List<Widget> column1;
  final List<Widget> column2;
  const MyProfile({Key key, this.column1, this.column2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContentPage(
                      Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                          child: Column(
                            children: [
                              RatingCell(
                                id: 0,
                                name: "Наггетс Хахатун",
                                rating: 10000,
                              ),
                              RatingCell(
                                id: 1,
                                name: "Адольф Прокофьев",
                                rating: 9100,
                              ),
                              RatingCell(
                                id: 2,
                                name: "Роман Гришин",
                                rating: 9010,
                              ),
                              RatingCell(
                                id: 3,
                                name: "Анжелика Попова",
                                rating: 8850,
                              ),
                              RatingCell(
                                id: 4,
                                name: "Мария Смольникова",
                                rating: 8900,
                              ),
                            ],
                          )),
                      Text("Сезонный ТОП-5"))));
            },
            child: Container(
                height: 80.0,
                width: double.infinity,
                margin: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
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
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Table(children: [
                        TableRow(children: [
                          Text("Рейтинг:", textScaleFactor: 1.75),
                          Text("8900",
                              textScaleFactor: 1.75,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.deepOrange))
                        ]),
                      ]),
                      Table(children: [
                        TableRow(children: [
                          Text("Место в топе:", textScaleFactor: 1.75),
                          Text("13",
                              textScaleFactor: 1.75,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.deepOrange))
                        ]),
                      ])
                    ])))),
        Container(
            height: 85.0,
            width: double.infinity,
            margin: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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
            child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContentPage(
                          Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  top: 20.0,
                                  bottom: 20.0),
                              child: Column(
                                children: [_getPersonalDataDetail()],
                              )),
                          Text("Редактирование профиля"))));
                },
                child: _getPersonalData())),
        Container(
          //height: 100.0,
          width: double.infinity,
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
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
              Container(
                  width: 340,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20),
                  child: BigButton(
                      icon: Icons.adjust,
                      child: Text("Цели и развитие", textScaleFactor: 1.25),
                      callback: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TargetPage()));
                      })),
              Container(
                  width: 340,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20),
                  child: BigButton(
                      icon: Icons.search,
                      callback: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FindMentorPage()));
                      },
                      child: Text("Поиск наставника", textScaleFactor: 1.25))),
              Container(
                  width: 340,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20),
                  child: BigButton(
                      icon: Icons.textsms_outlined,
                      child: Text("Чат с наставником", textScaleFactor: 1.25),
                      callback: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmptyPage()));
                      })),
              Container(
                  width: 340,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20),
                  child: BigButton(
                      icon: Icons.addchart,
                      child: Text("Профориентация", textScaleFactor: 1.25),
                      callback: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProforientationPage()));
                      })),
              Container(
                  width: 340,
                  height: 55,
                  child: BigButton(
                      icon: Icons.stars_rounded,
                      child: Text("Список достижений", textScaleFactor: 1.25),
                      callback: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmptyPage()));
                      })),
            ],
          ),
        )
      ]),
    );
  }
}
