import 'package:flutter/material.dart';

class AnimatedButtonScreen extends StatelessWidget {
  const AnimatedButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: AnimatedButton(),
      ),
    );
  }
}

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({Key? key}) : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  var _roundedButton = false;
  final _durationAnimation = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: AnimatedAlign(
        alignment: _roundedButton ? Alignment.topCenter : Alignment.bottomRight,
        duration: Duration(seconds: _durationAnimation),
        child: AnimatedContainer(
          duration: Duration(seconds: _durationAnimation),
          decoration: BoxDecoration(
            borderRadius: _roundedButton
                ? BorderRadius.circular(0)
                : BorderRadius.circular(100),
            color: Colors.blue,
          ),
          width: _roundedButton ? 100 : 50,
          height: 50,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _roundedButton = !_roundedButton;
              });
            },
            child: Center(child: Text("$_roundedButton")),
          ),
        ),
      ),
    );
  }
}
