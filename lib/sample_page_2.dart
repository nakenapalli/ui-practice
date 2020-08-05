import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'custom_card_wide.dart';

class SamplePage2 extends StatelessWidget {
  const SamplePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {},
                ),
                Container(
                  width: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              "Hi, Nikhil",
              style: GoogleFonts.robotoCondensed(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, top: 5.0),
            child: Text(
              "Welcome to the club!",
              style: GoogleFonts.robotoCondensed(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 4.7,
              padding: EdgeInsets.all(20.0),
              child: Swiper(
                itemBuilder: (context, index) {
                  return CustomCardWide(
                    header: "New Year Surprise!",
                    message: "Bonus balance up to \$40.00",
                    expired: "valid until June 20",
                  );
                },
                itemCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
