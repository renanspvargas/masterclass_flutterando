import 'package:flutter/material.dart';

class AnimatedExpansionTile extends StatelessWidget {
  const AnimatedExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListGenerator(),
    );
  }
}

class ListGenerator extends StatefulWidget {
  const ListGenerator({Key? key}) : super(key: key);

  @override
  _ListGeneratorState createState() => _ListGeneratorState();
}

class _ListGeneratorState extends State<ListGenerator> {
  final _animationTimer = Duration(milliseconds: 500);
  final _items = List.generate(100, (i) => ListItemManager());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: Colors.purple,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _items[index].iconOrientation += 1.0 / 2.0;
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            child: ClipRect(
              child: ListTile(
                trailing: AnimatedRotation(
                  duration: _animationTimer,
                  turns: _items[index].iconOrientation,
                  child: Icon(Icons.arrow_downward),
                ),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Item $index",
                        style: TextStyle(
                            color: Colors.black, backgroundColor: Colors.white),
                      ),
                    ),
                    AnimatedAlign(
                        alignment: Alignment.center,
                        duration: _animationTimer,
                        heightFactor: _items[index].isExpanded ? 1 : 0,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
          // child: AnimatedAlign(
          //   onEnd: () => Container(),
          //   alignment: Alignment.topLeft,
          //   duration: _animationTimer,
          //   heightFactor: _items[index].isExpanded ? 1.5 : 1,
          //   child: Column(
          //     children: [
          //       ListTile(
          //         tileColor: Colors.deepPurpleAccent,
          //         title: Text("Item $index"),
          //         trailing: AnimatedRotation(
          //           duration: _animationTimer,
          //           turns: _items[index].iconOrientation,
          //           child: Icon(Icons.arrow_downward),
          //         ),
          //         onTap: () {
          //           setState(() {
          //             _items[index].iconOrientation += 1.0 / 2.0;
          //             _items[index].isExpanded = !_items[index].isExpanded;
          //           });
          //         },
          //       ),
          //       Container(
          //         height: 10,
          //         width: 10,
          //         color: Colors.cyan,
          //       ),
          //     ],
          //   ),
          // ),
        );
      },
    );
  }
}

class ListItemManager {
  bool isExpanded;
  double iconOrientation;

  ListItemManager({
    Key? key,
    this.isExpanded = false,
    this.iconOrientation = 0.0,
  });
}
