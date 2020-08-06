import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTile extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomTile({Key key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
      child: Container(
        width: MediaQuery.of(context).size.width / 6,
        height: MediaQuery.of(context).size.height / 9,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Icon(icon, color: Colors.indigoAccent[700]),
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              textDirection: TextDirection.ltr,
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
