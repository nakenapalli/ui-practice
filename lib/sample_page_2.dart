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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: Column(
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
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.0, right: 2.0),
            child: Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.63,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 420,
            right: 20,
            child: Container(
              width: MediaQuery.of(context).size.width / 0.9,
              height: MediaQuery.of(context).size.height / 3.7,
              padding: EdgeInsets.only(left: 70),
              child: Swiper(
                itemBuilder: (context, index) {
                  return CustomCardWide(
                    header: "New Year Surprise!",
                    message: "Bonus balance up to \$40.00",
                    expired: "valid until June 20",
                  );
                },
                itemCount: 5,
                pagination: SwiperPagination(
                  margin: EdgeInsets.only(top: 20),
                  builder: SwiperPagination.dots,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
