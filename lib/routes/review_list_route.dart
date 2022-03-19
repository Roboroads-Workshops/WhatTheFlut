import 'package:flutter/material.dart';
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
              onPressed: () {},
            ),
            ReviewCard(
              image: Image.asset('assets/crepe.png'),
              title: "Pannakoeken (Crepes)",
              category: "Food",
              onPressed: () {},
            ),
            ReviewCard(
              image: Image.asset('assets/dank-meme.png'),
              title: "Dank Memes",
              category: "Internet",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
