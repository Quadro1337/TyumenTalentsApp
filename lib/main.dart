
import "package:fancy_bottom_navigation/fancy_bottom_navigation.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Создать новость"),),
      body: Center(child: Text("В разработке..."),),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Таланты Тюмени",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Таланты Тюмени"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.airplay,
              title: "Новости",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.search,
              title: "Поиск",

          ),
          TabData(iconData: Icons.workspaces_filled, title: "Партнеры"),
          TabData(iconData: Icons.account_box, title: "Профиль")
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
  printUserInfo(List<Widget> column1, List<Widget> column2) {
    return Container(
      margin: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: column1
            ),
            Column(children: column2)
          ],
        )
    );
  }
  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("В разработке..."),
          ],
        );
      case 1:
        return Column(
         // mainAxisAlignment: MainAxisAlignment.start,

         // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("\nПоиск"),
            TextField(
              toolbarOptions: ToolbarOptions(
                  copy: true,
                  cut: true,
                  paste: true,
                  selectAll: true
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(

                  ),
                  hintText: "Введите ключевые слова"
                ),
            ),
            new RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  child: new AlertDialog(
                    title: new Text('Ошибка'),
                    content: new Text("Пока что эта функция в разработке..."),
                  ),
                );
              },
              child: new Text("Искать"),
            ),
          ],
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
            "В разработке..."
            ),
          ],
        );
      case 3:
        return Container(
            child: Column(
          children: <Widget>[

            printUserInfo(
                [
                  Text("ФИО:"),
                  Text("Дата рождения:"),
                  Text("Электронная почта:"),
                  Text("Контактный телефон:"),
                ],
                [
                  Text("Иванов Иван Иванович", style: TextStyle(color: Colors.deepOrange)),
                  Text("01.01.2010", style: TextStyle(color: Colors.deepOrange)),
                  Text("ivanov.01.01.2000@mail.ru", style: TextStyle(color: Colors.deepOrange)),
                  Text("+71234567890", style: TextStyle(color: Colors.deepOrange)),
                ]
            ),

            Text("Достижения:"),
            Text("Пока что их нет :)",
                style: TextStyle(
                    color: Colors.deepOrange
                )
            ),
          ],
        )
        );
    }
  }
}