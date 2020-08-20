import 'package:flutter/material.dart';
import 'movie_card.dart';
import 'size_constants.dart';
import 'chart_card.dart';

class SamplePage3 extends StatelessWidget {
  const SamplePage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Listings'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          SizeConstants constraints = SizeConstants();
          return Container(
            width: MediaQuery.of(context).size.width,
            child: orientation == Orientation.portrait
                ? buildLayout(constraints.portraitWidth(context))
                : buildLayout(constraints.landscapeWidth(context)),
          );
        },
      ),
    );
  }
}

Widget buildLayout(double cardWidth) {
  print("width: $cardWidth");
  return SingleChildScrollView(
    child: Wrap(
      children: [
        ChartCard(width: cardWidth),
        MovieCard(width: cardWidth),
        MovieCard(width: cardWidth),
        MovieCard(width: cardWidth),
      ],
    ),
  );
}
