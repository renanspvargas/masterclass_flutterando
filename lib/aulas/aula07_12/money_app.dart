import 'package:flutter/material.dart';

class MoneyApp extends StatelessWidget {
  const MoneyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const FlutterLogo(
                size: 100,
              ),
              const Text(
                "Get yout Money\nUnder Control",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "Manage your expenses\nSeamlessly",
                style: TextStyle(
                    fontSize: 16, color: Colors.white.withOpacity(0.5)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff5e5ce5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Sign Up With Email ID"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  icon: const FlutterLogo(),
                  label: const Text(
                    "Sign Up With Google Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              RichText(
                text: const TextSpan(
                  // style: TextStyle(fontWeight: sFontWeight.bold),
                  children: [
                    TextSpan(text: "Already have an account?"),
                    TextSpan(text: " "),
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
