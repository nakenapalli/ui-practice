import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:math';

class CustomCardWide extends StatelessWidget {
  final String header;
  final String message;
  final String expired;

  const CustomCardWide({
    Key key,
    this.header,
    this.message,
    this.expired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Image.asset('assets/graphics/box.jpg'),
          SizedBox(width: 25),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    header,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    message,
                    style: GoogleFonts.roboto(
                      color: Colors.indigoAccent[700],
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 5.0),
                  child: Text(
                    expired,
                    style: GoogleFonts.roboto(
                      color: Colors.grey[400],
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Transform.rotate(
              angle: -pi / 4,
              child: Icon(MdiIcons.arrowBottomRight,
                  color: Colors.indigoAccent[700]),
            ),
          ),
        ],
      ),
    );
  }
}
