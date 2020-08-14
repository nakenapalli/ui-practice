import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.75,
      // height: MediaQuery.of(context).size.height * 0.25,
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
      padding: EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FittedBox(
            child: Image.asset('assets/graphics/inception.jpg'),
          ),
          Column(
            children: [
              Text(
                'Inception',
                style: GoogleFonts.alata(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Description',
                style: GoogleFonts.alata(fontSize: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
