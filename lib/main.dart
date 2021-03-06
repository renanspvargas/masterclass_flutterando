import 'package:flutter/material.dart';
import 'package:masterclass_flutterando/aulas/aula07_12/money_app.dart';
import 'package:masterclass_flutterando/aulas/aula07_12/tinder_app.dart';
import 'package:masterclass_flutterando/aulas/aula14_12/exercicio1.dart';
import 'package:masterclass_flutterando/aulas/aula14_12/exercicio2.dart';
import 'package:masterclass_flutterando/aulas/aula14_12/exercicio3.dart';

import 'Components/list_card.dart';

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
        children: const [
          ListTitle(title: "Aula 07/12"),
          ListCard(title: "Money app", destiny: MoneyApp()),
          ListCard(title: "Tinder app", destiny: TinderApp()),
          ListTitle(title: "Aula 14/12"),
          ListCard(
              title: "(implicit) Animated Button",
              destiny: AnimatedButtonScreen()),
          ListCard(
              title: "(implicit) Animated Expansion Tile",
              destiny: AnimatedExpansionTile()),
          ListCard(
              title: "(controlled) Animated Button",
              destiny: ControlledAnimationButtonScreen())
        ],
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  final String title;
  const ListTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Container(
          color: Colors.cyan,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
