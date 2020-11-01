import "package:flutter/material.dart";
import "EmptyPage.dart";
import "ContentPage.dart";

class DefaultTask extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> hashtags;
  const DefaultTask({Key key, this.title, this.description, this.hashtags})
      : super(key: key);
  _getContent(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: BoxDecoration(color: Color(0x0FFF1F00)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 10.0), child: Text(title)),
            Text(description),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(children: hashtags),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => EmptyPage()));
              },
              child: Text("Искать наставника"),
            )
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
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EmptyPage()));
                },
                child: Text("Искать наставника в общем списке"),
              )
            ],
          )),
    );
  }
}
