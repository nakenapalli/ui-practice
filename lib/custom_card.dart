import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 7,
        height: MediaQuery.of(context).size.height / 8.5,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'http://shellfishireland.com/wp-content/uploads/2019/03/beweship-contact-placeholder.jpg',
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
      ),
    );
  }
}
