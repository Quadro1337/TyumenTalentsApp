import "package:flutter/material.dart";
import "PromoPage.dart";
import "BigButton.dart";
import 'EmptyPage.dart';

class MyPartners extends StatelessWidget {
  const MyPartners({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            //height: 100.0,
            width: double.infinity,
            padding: EdgeInsets.only(top: 20.0, bottom: 0.0),
            margin: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
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
                    height: 55,
                    margin: EdgeInsets.only(bottom: 20),
                    child: BigButton(
                        icon: Icons.animation,
                        child: Text("Акции", textScaleFactor: 1.25),
                        callback: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PromoPage()));
                        })),
                Container(
                    width: 340,
                    height: 55,
                    margin: EdgeInsets.only(bottom: 20),
                    child: BigButton(
                        icon: Icons.attribution_outlined,
                        callback: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EmptyPage()));
                        },
                        child: Text("Стажировки", textScaleFactor: 1.25))),
                Container(
                    width: 340,
                    height: 55,
                    margin: EdgeInsets.only(bottom: 20),
                    child: BigButton(
                        icon: Icons.textsms_outlined,
                        child:
                            Text("Информация о друзьях", textScaleFactor: 1.25),
                        callback: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EmptyPage()));
                        })),
              ],
            ),
          )
        ],
      ),
    );
  }
}
