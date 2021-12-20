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
        children: const [
          SizedBox(
            height: 15,
          ),
          ListTitle(title: "Aula 07/12"),
          ListCard(title: "Money app", destiny: MoneyApp()),
          ListCard(title: "Tinder app", destiny: TinderApp())
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
    return Container(
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
    );
  }
}

class ListCard extends StatelessWidget {
  final String title;
  final Widget destiny;

  const ListCard({Key? key, required this.title, required this.destiny})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destiny),
          );
        },
      ),
    );
  }
}
