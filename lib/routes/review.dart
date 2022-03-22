import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  final String title;
  final String body;
  final Image image;
  final String heroTag;

  const Review({
    Key? key,
    required this.title,
    required this.body,
    required this.image,
    required this.heroTag,
  }) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  String notes = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showEditNotesDialog(context),
        child: const Icon(Icons.edit_note),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Hero(tag: widget.heroTag, child: widget.image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.body),
          ),
          if (notes.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Notes",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(notes),
            ),
          ]
        ],
      ),
    );
  }

  void showEditNotesDialog(BuildContext context) {
    var notesController = TextEditingController(text: notes);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit notes"),
          content: TextField(
            controller: notesController,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  notes = notesController.text;
                });

                Navigator.of(context).pop();
              },
              child: Text("APPLY"),
            ),
          ],
        );
      },
    );
  }
}
