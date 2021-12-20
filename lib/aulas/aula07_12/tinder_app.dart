import 'package:flutter/material.dart';

class TinderApp extends StatelessWidget {
  const TinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
        textStyle: const TextStyle(
          color: Colors.white,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFFD297B),
              Color(0xFFff5864),
              Color(0XFFFF655B)
            ]),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 80),
                  TermsAndConditions(),
                  SizedBox(height: 50),
                  ButtonComponent(
                    label: "SIGN IN WITH FACEBOOK",
                    icon: "assets/apple.png",
                  ),
                  ButtonComponent(
                    label: "SIGN IN WITH FACEBOOK",
                    icon: "assets/apple.png",
                  ),
                  ButtonComponent(
                    label: "SIGN IN WITH FACEBOOK",
                    icon: "assets/apple.png",
                  ),
                  SizedBox(height: 20),
                  Text("Trouble Signing In?")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonComponent extends StatelessWidget {
  final String label;
  final String icon;

  const ButtonComponent({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.transparent,
          ),
          height: 50,
          child: Row(
            children: [
              const SizedBox(width: 20),
              Image.asset(
                icon,
                width: 20,
              ),
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                ),
                flex: 1,
              ),
              SizedBox(width: 40),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(fontSize: 14),
          children: [
            TextSpan(
                text:
                    "By tapping Create Account or Sign In, you agree to our "),
            TextSpan(
              text: "Terms",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: ". Learn how we processyour data in our "),
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: " and "),
            TextSpan(
              text: "Cookies Policy",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: "."),
          ],
        ),
      ),
    );
  }
}
