import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

_launchTest1() async {
  const url = "https://profilum.ru/test-na-professiyu";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}

_launchTest2() async {
  const url = "http://test.skillfolio.ru/birthday";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Список тестов"),
      ),
      body: Column(children: [
        Container(
          height: 200,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(child: Text("Тест 1"), onPressed: _launchTest1),
              RaisedButton(child: Text("Тест 2"), onPressed: _launchTest1),
            ],
          ),
        ),
      ]),
    );
  }
}

class ProforientationPage extends StatefulWidget {
  @override
  _ProforientationPageState createState() => _ProforientationPageState();
}

class _ProforientationPageState extends State<ProforientationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профориентация"),
      ),
      body: Column(children: [
        Container(
          height: 150,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Обязательно пройдите эти тесты, они помогут вам выбрать вашу будущую профессию!"),
              RaisedButton(
                  child: Text("Ссылки на тест"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QuestionPage()));
                  }),
            ],
          ),
        ),
      ]),
    );
  }
}
