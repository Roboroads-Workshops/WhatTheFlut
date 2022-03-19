import 'package:flutter/material.dart';
import 'package:how_to_flut/routes/review_list_route.dart';

void main() {
  runApp(const HowToFlut());
}

class HowToFlut extends StatelessWidget {
  const HowToFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReviewListRoute(),
    );
  }
}
