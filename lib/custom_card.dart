import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.5,
      height: MediaQuery.of(context).size.height / 6,
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                'http://shellfishireland.com/wp-content/uploads/2019/03/beweship-contact-placeholder.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Text(
            text,
            textDirection: TextDirection.ltr,
            style: GoogleFonts.roboto(),
            textScaleFactor: 0.8,
          ),
        ],
      ),
    );
  }
}
