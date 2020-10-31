import "package:flutter/material.dart";

class EmptyPage extends StatefulWidget {
  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Пустая страница"),
      ),
      body: Column(children: [
        Container(
          height: 100,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("В разработке...")],
          ),
        ),
      ]),
    );
  }
}
