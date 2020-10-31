import "package:flutter/material.dart";
import 'PromoPage.dart';

_childWithButton(String text, void Function() onPressed) {
  return Container(
    alignment: Alignment.center,
    height: 90.0,
    width: double.infinity,
    margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
    decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
      BoxShadow(
          color: Color(0x350000000),
          spreadRadius: 5.0,
          blurRadius: 10.0,
          offset: Offset(5, 5))
    ]),
    child: Column(
      children: [
        RaisedButton(
          onPressed: onPressed,
          child: Container(
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: Text(text),
          ),
        )
      ],
    ),
  );
}

class MyPartners extends StatelessWidget {
  const MyPartners({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _childWithButton("Акции", () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PromoPage()));
          }),
          _childWithButton("Стажировки", () => {}),
          _childWithButton("Информация о друзьях", () => {})
        ],
      ),
    );
  }
}
