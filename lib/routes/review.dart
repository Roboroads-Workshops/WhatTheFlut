import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String title;
  final String body;
  final Image image;

  const Review({
    Key? key,
    required this.title,
    required this.body,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          image,
          Text(body),
        ],
      ),
    );
  }
}
