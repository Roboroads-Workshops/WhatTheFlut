import 'package:flutter/material.dart';

void main() {
  runApp(const HowToFlut());
}

class HowToFlut extends StatelessWidget {
  const HowToFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
