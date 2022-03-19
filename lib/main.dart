import 'package:flutter/material.dart';

void main() {
  runApp(const HowToFlut());
}

class HowToFlut extends StatelessWidget {
  const HowToFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Roboroads Reviews Everything"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/the-witcher-3.png'),
                    ListTile(
                      title: Text("The Witcher 3"),
                      subtitle: Text("Category: Videogame"),
                    ),
                    ButtonBar(children: [
                      FlatButton(onPressed: () {}, child: Text('READ MORE'))
                    ]),
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
