import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Image image;
  final String title;
  final String category;
  final void Function()? onPressed;

  const ReviewCard({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          image,
          ListTile(
            title: Text(title),
            subtitle: Text("Category: $category"),
          ),
          ButtonBar(children: [
            FlatButton(
              onPressed: onPressed,
              child: Text('READ MORE'),
            )
          ]),
        ],
      ),
    );
  }
}
