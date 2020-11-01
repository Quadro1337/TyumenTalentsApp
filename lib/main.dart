import "package:fancy_bottom_navigation/fancy_bottom_navigation.dart";
import "package:flutter/material.dart";
import "DefaultPost.dart";
import "DefaultEvent.dart";
import 'myProfile.dart';
import 'myParters.dart';
import 'BigButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Таланты 72",
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
        title: Text("Таланты 72"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: _getPage(currentPage),
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
            iconData: Icons.add_location_alt,
            title: "События",
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
          date: "30.10.2020",
          value:
              "Тестовый пост, просто для того чтобы показать как будет выглядеть наше приложение."),
      DefaultPost(
          author: "Anonimus",
          date: "10.10.1998",
          value:
              "Во всем мире лыжи стали одним из самых популярных видов зимнего спорта. Нет более демократичного, доступного, столь тесно связанного с природой и так полезного для человека вида спорта. Появление лыж было обусловлено потребностью человека добывать на охоте пищу зимой и передвигаться по местности, занесенной снегом.Лыжи появились повсеместно, где жил человек в условиях снежной зимы. Первые лыжи были ступающие. Одна из последних находок (А.М.Микляев, 1982 г.) обнаружена на территории Псковской области. По заключению специалистов, эта лыжа является одной из самых древних - сделана около 4300 лет назад.Первые письменные документы о применении скользящих лыж относятся к VI-VII в.в. н. э. Готский монах Жорданес в 552 г., греческие историки Иордан в VI в., Авел Диакон в 770 г. описывают использование лапландцами и финнами лыж в быту и на охоте. В конце VIIв. историк Верефрид дал подробное описание лыж и их использование народами Севера на охоте за зверем. Король Норвегии Олаф Тругвассон по записям 925г. представлен хорошим лыжником. В 960 г. лыжи упоминаются как принадлежность для обучения придворных норвежских сановников."),
      DefaultPost(
          author: "Сергеев Сергей Сергеевич",
          date: "31.10.2020",
          value:
              "Лыжный спорт — это совокупность различных видов зимнего спорта, в соревнованиях по которым спортсмены используют лыжи. Включает в себя бег на лыжах на различные дистанции, прыжки на лыжах с трамплина, лыжное двоеборье (лыжная гонка и прыжки на лыжах с трамплина), горнолыжный спорт и др. Зародился лыжный спорт в Норвегии в XVIII веке. В Международной федерации лыжного спорта — ФИС (FIS; основана в 1924) — состоит из около 60 государств (1991). Лыжный спорт входит в программу зимних Олимпийских игр с 1924 года. Чемпионаты мира проводятся с 1925 года (официально с 1937 года). В России лыжный спорт развивает Ассоциация лыжных видов спорта России (RSA — Russian Ski Association), которая является единственным официальным представителем в ФИС.")
    ];
  }

  _getEvents() {
    return [
      DefaultEvent(
        title: "Веселые поплавки",
        date: "13.01.2021 - 16.01.2021",
        value:
            "В центральном бассейне пройдет чемпионат по плаванию \"Веселые поплавки\". Если ты смелый, ловкий и умелый, то ты точно станешь самым крутым дельфином в этом водоёме.",
        age: "13-17",
        category: "Плаванье",
      ),
      DefaultEvent(
        title: "Веселые поплавки",
        date: "13.01.2021 - 16.01.2021",
        value:
            "В центральном бассейне пройдет чемпионат по плаванию \"Веселые поплавки\". Если ты смелый, ловкий и умелый, то ты точно станешь самым крутым дельфином в этом водоёме.",
        age: "13-17",
        category: "Плаванье",
      ),
      DefaultEvent(
        title: "Веселые поплавки",
        date: "13.01.2021 - 16.01.2021",
        value:
            "В центральном бассейне пройдет чемпионат по плаванию \"Веселые поплавки\". Если ты смелый, ловкий и умелый, то ты точно станешь самым крутым дельфином в этом водоёме.",
        age: "13-17",
        category: "Плаванье",
      ),
      DefaultEvent(
        title: "Веселые поплавки",
        date: "13.01.2021 - 16.01.2021",
        value:
            "В центральном бассейне пройдет чемпионат по плаванию \"Веселые поплавки\". Если ты смелый, ловкий и умелый, то ты точно станешь самым крутым дельфином в этом водоёме.",
        age: "13-17",
        category: "Плаванье",
      )
    ];
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return SingleChildScrollView(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
                  BoxShadow(
                      color: Color(0x350000000),
                      spreadRadius: 5.0,
                      blurRadius: 10.0,
                      offset: Offset(5, 5))
                ]),
                width: double.infinity,
                height: 120.0,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Введите ключевые слова"),
                      ),
                    ),
                    Container(
                        height: 40.0,
                        width: 130.0,
                        padding: EdgeInsets.only(left: 20.0),
                        child: BigButton(
                          callback: () {},
                          child: Text("Искать"),
                        )
                        // child: FlatButton(
                        //   onPressed: () {},
                        //   child: Text("Искать"),
                        //   shape: StadiumBorder(),
                        //   color: Colors.deepOrange,
                        //   textColor: Colors.white,
                        // )
                        )
                  ],
                )),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: _getPosts()))
          ],
        ));
      case 1:
        return SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
                BoxShadow(
                    color: Color(0x350000000),
                    spreadRadius: 5.0,
                    blurRadius: 10.0,
                    offset: Offset(5, 5))
              ]),
              width: double.infinity,
              height: 80.0,
              alignment: Alignment.center,
              child: Text("Скоро здесь что-то будет."),
            ),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: _getEvents()))
          ],
        ));
      case 2:
        return MyPartners();
      case 3:
        return MyProfile(
          column1: [
            Text("ФИО:", textScaleFactor: 1.1),
            Text("Дата рождения:", textScaleFactor: 1.1),
            Text("Номер телефона:", textScaleFactor: 1.1),
            Text("Электронная почта:", textScaleFactor: 1.1)
          ],
          column2: [
            Text("Иванов Иван Иванович",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("01.01.2010",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("+7-123-456-7890",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1),
            Text("ivan_ivanov2010@mail.ru",
                style: TextStyle(color: Colors.deepOrange),
                textScaleFactor: 1.1)
          ],
        );
    }
  }
}
