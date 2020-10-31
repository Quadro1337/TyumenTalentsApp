import "package:flutter/material.dart";

void _voidFunc() {}

class DefaultTask extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> hashtags;
  const DefaultTask({Key key, this.title, this.description, this.hashtags})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      //width: 300.0,
      //height: 120.0,
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(color: Color(0x0FFF1F00)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Text(description),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(children: hashtags),
          ),
          RaisedButton(
            onPressed: _voidFunc,
            child: Text("Искать наставника"),
          )
        ],
      ),
    );
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
      body: Container(
          alignment: Alignment.center,
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
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
              Text("Список задач"),
              Column(
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
              ),
              Text("Критерии наставников"),
              RaisedButton(
                onPressed: _voidFunc,
                child: Text("Искать ментора"),
              )
            ],
          )),
    );
  }
}
