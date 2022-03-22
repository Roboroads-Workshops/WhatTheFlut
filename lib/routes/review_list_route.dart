import 'package:flutter/material.dart';
import 'package:how_to_flut/routes/review.dart';
import 'package:how_to_flut/widgets/review_card.dart';

class ReviewListRoute extends StatelessWidget {
  const ReviewListRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roboroads Reviews Everything"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReviewCard(
              image: Image.asset('assets/the-witcher-3.png'),
              title: "The Witcher 3",
              category: "Videogame",
              id: 'witcher',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Review(
                      title: "The Witcher 3",
                      body: "Wow this is great 10/10 would play again.",
                      id: 'witcher',
                      image: Image.asset('assets/the-witcher-3.png'),
                    ),
                  ),
                );
              },
            ),
            ReviewCard(
              image: Image.asset('assets/crepe.png'),
              title: "Pannakoeken (Crepes)",
              category: "Food",
              id: 'crepe',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Review(
                      title: "Pannakoeken (Crepes)",
                      body: "Wow this is great 10/10 would eat again.",
                      id: 'crepe',
                      image: Image.asset('assets/crepe.png'),
                    ),
                  ),
                );
              },
            ),
            ReviewCard(
              image: Image.asset('assets/dank-meme.png'),
              title: "Dank Memes",
              category: "Internet",
              id: 'meme',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Review(
                      title: "Dank Memes",
                      body: "Wow this is great 10/10 would laugh again.",
                      id: 'meme',
                      image: Image.asset('assets/dank-meme.png'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
