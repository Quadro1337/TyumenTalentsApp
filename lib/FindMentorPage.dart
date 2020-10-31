import "package:flutter/material.dart";

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
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Список задач"),
              Text("Критерии наставников"),
              RaisedButton(
                onPressed: null,
                child: Text("Искать ментора"),
              )
            ],
          )),
    );
  }
}
