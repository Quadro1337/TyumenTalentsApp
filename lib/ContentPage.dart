import "package:flutter/material.dart";

class ContentPage extends StatefulWidget {
  final Widget content;
  final Widget title;
  ContentPage(this.content, this.title);
  @override
  _ContentPageState createState() =>
      _ContentPageState(this.content, this.title);
}

class _ContentPageState extends State<ContentPage> {
  final Widget content;
  final Widget title;
  _ContentPageState(this.content, this.title);
  _getEmptyContent() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
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
      child: Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: this.title,
      ),
      body: SingleChildScrollView(
          child: content == null ? _getEmptyContent() : content),
    );
  }
}
