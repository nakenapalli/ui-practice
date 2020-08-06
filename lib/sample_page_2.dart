import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'custom_card_wide.dart';
import 'custom_tile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                padding: EdgeInsets.only(bottom: 30),
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.63,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Wrap(
                  children: <Widget>[
                    CustomTile(
                      text: "Top Up",
                      icon: MdiIcons.arrowExpandUp,
                    ),
                    CustomTile(
                      text: "Payments",
                      icon: MdiIcons.creditCardOutline,
                    ),
                    CustomTile(
                      text: "Cuan Cash",
                      icon: MdiIcons.cashUsdOutline,
                    ),
                    CustomTile(
                      text: "Telecom",
                      icon: MdiIcons.phoneOutgoingOutline,
                    ),
                    CustomTile(
                      text: "Shopping",
                      icon: MdiIcons.cartOutline,
                    ),
                    CustomTile(
                      text: "Health",
                      icon: MdiIcons.heartFlash,
                    ),
                    CustomTile(
                      text: "Coffee",
                      icon: MdiIcons.coffee,
                    ),
                    CustomTile(
                      text: "Realty Pay",
                      icon: MdiIcons.packageVariantClosed,
                    ),
                    CustomTile(
                      text: "Loyalty",
                      icon: MdiIcons.batteryCharging50,
                    ),
                    CustomTile(
                      text: "Gift Card",
                      icon: MdiIcons.walletGiftcard,
                    ),
                    CustomTile(
                      text: "Entertainment",
                      icon: MdiIcons.musicNoteEighth,
                    ),
                    CustomTile(
                      text: "More",
                      icon: MdiIcons.dotsHorizontal,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 420,
            right: 12,
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
