import "package:flutter/material.dart";

class BigButton extends StatelessWidget {
  final Widget child;
  final void Function() callback;
  final IconData icon;
  const BigButton({Key key, this.callback, this.child, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: this.icon != null
            ? FlatButton.icon(
                onPressed: callback,
                icon: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Column(children: [Icon(icon), child])),
                label: Container(),
                shape: StadiumBorder(),
                color: Colors.deepOrange,
                textColor: Colors.white,
              )
            : FlatButton(
                onPressed: callback,
                child: this.child,
                shape: StadiumBorder(),
                color: Colors.deepOrange,
                textColor: Colors.white,
              ));
  }
}
