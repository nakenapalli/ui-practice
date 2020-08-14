import 'package:flutter/material.dart';
import 'movie_card.dart';

class SamplePage3 extends StatelessWidget {
  const SamplePage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Listings'),
      ),
      body: Expanded(
        child: Container(
          child: Wrap(
            children: [
              MovieCard(),
              MovieCard(),
              MovieCard(),
            ],
          ),
        ),
      ),
    );
  }
}
