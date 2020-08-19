import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({Key key, this.width}) : super(key: key);

  final double width;

  @override
  _MovieCardState createState() => _MovieCardState(width);
}

class _MovieCardState extends State<MovieCard> {
  _MovieCardState(this.cardWidth);

  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 3.0,
            spreadRadius: 3.0,
            offset: Offset(1.0, 1.0),
          )
        ],
      ),
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/graphics/inception.jpg',
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Inception',
                  style: GoogleFonts.alata(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Description',
                  style: GoogleFonts.alata(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
