import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Review extends StatefulWidget {
  final String title;
  final String body;
  final Image image;
  final String id;

  const Review({
    Key? key,
    required this.id,
    required this.title,
    required this.body,
    required this.image,
  }) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  String notes = '';

  _ReviewState() {
    _loadNotes();
  }

  void _loadNotes() async {
    var prefs = await SharedPreferences.getInstance();
    setState(() {
      notes = prefs.getString("review-notes-${widget.id}") ?? '';
    });
  }

  void _saveNotes() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("review-notes-${widget.id}", notes);
  }

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
          Hero(tag: widget.id, child: widget.image),
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
                  _saveNotes();
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
