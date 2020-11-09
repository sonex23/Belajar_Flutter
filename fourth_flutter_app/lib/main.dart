import 'package:flutter/material.dart';
import './hal.smartphone.dart' as smartphone;
import './hal_headset.dart' as headset;
import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.computer),
              text: "Komputer",
            ),
            Tab(icon: Icon(Icons.headset), text: "Headset"),
            Tab(icon: Icon(Icons.radio), text: "Radio"),
            Tab(icon: Icon(Icons.phone_android), text: "Smartphone"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          smartphone.Smarthphone()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.headset),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
            Tab(
              icon: Icon(Icons.phone_android),
            ),
          ],
        ),
      ),
    );
  }
}
