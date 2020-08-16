import 'package:flutter/material.dart';
import 'movie_card.dart';
import 'size_constants.dart';

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
          return orientation == Orientation.portrait
              ? portraitLayout(constraints.portraitWidth(context))
              : landscapeLayout(constraints.landscapeWidth(context));
        },
      ),
    );
  }
}

Widget portraitLayout(double width) {
  return Container(
    width: width,
    child: Wrap(
      children: [
        MovieCard(),
        MovieCard(),
        MovieCard(),
      ],
    ),
  );
}

Widget landscapeLayout(double width) {
  return Container(
    width: width,
    child: Wrap(
      children: [
        MovieCard(),
        MovieCard(),
        MovieCard(),
      ],
    ),
  );
}
