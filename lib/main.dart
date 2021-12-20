import 'package:flutter/material.dart';
import 'package:masterclass_flutterando/aulas/aula07_12/money_app.dart';
import 'package:masterclass_flutterando/aulas/aula07_12/tinder_app.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const ListViewWidget(),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text("Money app screen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoneyApp()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Tinder app screen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TinderApp()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
