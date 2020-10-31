import "package:flutter/material.dart";
import 'package:flutter_app/EmptyPage.dart';
import 'TargetPage.dart';
import 'FindMentorPage.dart';
import 'ProforientationPage.dart';

class MyProfile extends StatelessWidget {
  final List<Widget> column1;
  final List<Widget> column2;
  const MyProfile({Key key, this.column1, this.column2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 90.0,
          width: double.infinity,
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
            BoxShadow(
                color: Color(0x350000000),
                spreadRadius: 5.0,
                blurRadius: 10.0,
                offset: Offset(5, 5))
          ]),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Column(children: column1)),
              Container(
                  padding: EdgeInsets.only(right: 20.0, top: 10.0),
                  child: Column(children: column2)),
            ],
          ),
        ),
        Container(
          //height: 100.0,
          width: double.infinity,
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
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
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20, top: 10),
                  child: RaisedButton(
                      child: Text("Цели и развитие"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TargetPage()));
                      })),
              Container(
                  width: 340,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                      child: Text("Поиск наставника"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FindMentorPage()));
                      })),
              Container(
                  width: 340,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                      child: Text("Чат с наставником"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmptyPage()));
                      })),
              Container(
                  width: 340,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                      child: Text("Профориентация"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProforientationPage()));
                      })),
              Container(
                  width: 340,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 10),
                  child: RaisedButton(
                      child: Text("Список достижений"),
                      onPressed: () {
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
