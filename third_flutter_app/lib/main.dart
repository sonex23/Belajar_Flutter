import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Sonex",
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/Home': (BuildContext context) => MyApp(),
      '/Favorite': (BuildContext context) => new FavoritePage(),
      '/Place': (BuildContext context) => new PlacePage(),
      '/Setting': (BuildContext context) => new SettingPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Card & Parsing")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardSaya(
              icon: Icons.home,
              text: "Home",
              colorIcon: Colors.black,
            ),
            CardSaya(
              icon: Icons.favorite,
              text: "Favorite",
              colorIcon: Colors.red,
            ),
            CardSaya(
              icon: Icons.place,
              text: "Place",
              colorIcon: Colors.blueAccent,
            ),
            CardSaya(
              icon: Icons.settings,
              text: "Setting",
              colorIcon: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color colorIcon;
  CardSaya({this.icon, this.text, this.colorIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          print("$text button Clicked");

          Navigator.pushNamed(context, "/$text");
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 50.0,
                  color: colorIcon,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Favorite"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "This is Favorite Page",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}

class PlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Place"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "This is Place Page",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Setting"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "This is Setting Page",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
