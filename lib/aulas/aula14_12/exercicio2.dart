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
  final controller = ListItemManager();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.purple,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
                _items[index].iconOrientation += 1.0 / 2.0;
              });
            },
            child: Column(
              children: [
                ListTile(
                  title: Text("Item $index"),
                  trailing: AnimatedRotation(
                    duration: _animationTimer,
                    turns: _items[index].iconOrientation,
                    child: Icon(
                      Icons.expand_more,
                    ),
                  ),
                ),
                ClipRect(
                  child: AnimatedAlign(
                    duration: _animationTimer,
                    alignment: Alignment.center,
                    heightFactor: _items[index].isExpanded ? 1 : 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          FlutterLogo(size: 100.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
