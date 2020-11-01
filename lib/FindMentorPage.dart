import "package:flutter/material.dart";
import "ContentPage.dart";
import "BigButton.dart";

class DefaultTask extends StatelessWidget {
  final String title;
  final String description;
  final hashtags;
  const DefaultTask({
    Key key,
    this.title,
    this.hashtags,
    this.description,
  }) : super(key: key);
  _getContent(context) {
    return Container(
        // decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
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
          Text(title,
              style: TextStyle(color: Colors.deepOrange),
              textScaleFactor: 1.25),
          Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(description, textScaleFactor: 1.15)),
          Container(
            child: Column(
              children: hashtags,
            ),
          ),
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
                            "Свободных наставников для этой проблемы пока что нет.",
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

class FindMentorPage extends StatefulWidget {
  @override
  _FindMentorPageState createState() => _FindMentorPageState();
}

int countOfEvents = 11;
int maxCountOfEvents = 50;

class _FindMentorPageState extends State<FindMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Поиск наставника"),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x350000000),
                        spreadRadius: 5.0,
                        blurRadius: 10.0,
                        offset: Offset(5, 5))
                  ]),
              width: double.infinity,
              height: 120.0,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: "Введите ключевые слова"),
                    ),
                  ),
                  Container(
                      height: 40.0,
                      width: 130.0,
                      padding: EdgeInsets.only(left: 20.0),
                      child: BigButton(
                        callback: () {},
                        child: Text("Искать"),
                      ))
                ],
              )),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
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
                  DefaultTask(
                    title: "Помощь по подготовке к ЕГЭ",
                    description: "Нужно помочь подготовиться к ЕГЭ по истории.",
                    hashtags: [
                      Row(
                        children: [
                          Text("#"),
                          Text("ЕГЭ",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                      Row(
                        children: [
                          Text("#"),
                          Text("Экзамены",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                      Row(
                        children: [
                          Text("#"),
                          Text("Подготовка",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                    ],
                  ),
                  DefaultTask(
                    title: "Стажировка в зарубежные компании",
                    description:
                        "Требуется помощь в прохождении стажировки в иностранной компании IKEA. Необходимо улучшить знание шведского языка и прокачать навык маркетинга.",
                    hashtags: [
                      Row(
                        children: [
                          Text("#"),
                          Text("ИностранныеЯзыки",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                      Row(
                        children: [
                          Text("#"),
                          Text("Швеция",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                      Row(
                        children: [
                          Text("#"),
                          Text("Маркетинг",
                              style: TextStyle(color: Colors.deepOrange))
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ]))));
  }
}
