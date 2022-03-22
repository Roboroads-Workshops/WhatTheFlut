import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Image image;
  final String title;
  final String category;
  final String heroTag;
  final void Function()? onPressed;

  const ReviewCard({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    required this.onPressed,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            trailing: SizedBox(
              width: 70,
              child: Hero(
                tag: heroTag,
                child: image,
              ),
            ),
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
