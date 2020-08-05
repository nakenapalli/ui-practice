import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Icon(MdiIcons.box),
          Column(
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
                padding: EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  expired,
                  style: GoogleFonts.roboto(
                    color: Colors.grey[300],
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
