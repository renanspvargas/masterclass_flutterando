import 'package:flutter/material.dart';

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
