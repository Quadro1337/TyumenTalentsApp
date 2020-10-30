import "package:fancy_bottom_navigation/fancy_bottom_navigation.dart";
import "package:flutter/material.dart";
import 'DefaultPost.dart';

void main() => runApp(MyApp());

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Создать новость"),
      ),
      body: Center(
        child: Text("В разработке..."),
      ),
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
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPosts() {
    return [
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "31.10.2020",
          value:
              "Тестовый пост, просто для того чтобы показать как будет выглядеть наше приложение."),
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "31.10.2020",
          value:
              "зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов."),
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "31.10.2020",
          value:
              "зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов."),
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "31.10.2020",
          value:
              "зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов."),
      DefaultPost(
          author: "Иванов Иван Иванович",
          date: "31.10.2020",
          value:
              "зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов.")
    ];
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return SingleChildScrollView(
            child: Column(
          children: _getPosts(),
        ));
      case 1:
        return Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text("Поиск"),
                TextField(
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Введите ключевые слова"),
                ),
                RaisedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: AlertDialog(
                        title: Text('Ошибка'),
                        content: Text("Эта функция в разработке..."),
                      ),
                    );
                  },
                  child: Text("Искать"),
                ),
              ],
            ));
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("В разработке..."),
          ],
        );
      case 3:
        return Scaffold();
    }
  }
}
