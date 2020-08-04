import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size);
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
              "Send and Receive Money",
              style: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 15),
            child: ToggleButtons(
              color: Colors.white,
              isSelected: <bool>[true, false, false],
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_android),
                        Text(
                          "Mobile",
                          style: GoogleFonts.robotoCondensed(),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(MdiIcons.qrcode),
                        Text(
                          "QR Code",
                          style: GoogleFonts.robotoCondensed(),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Bank to Bank",
                      style: GoogleFonts.robotoCondensed(),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40.0,
                        top: 25.0,
                        right: 40.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Recent contacts",
                            style: GoogleFonts.robotoCondensed(fontSize: 18.0),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.6),
                          IconButton(
                            icon: Icon(Icons.more_horiz),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Wrap(
                        children: <Widget>[
                          CustomCard(text: "Alexander"),
                          CustomCard(text: "Jessica L"),
                          CustomCard(text: "Marwan J"),
                          CustomCard(text: "Junaedi"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60.0, top: 15, right: 60),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300].withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: TextFormField(
                          initialValue: "Recipient",
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 15, right: 40),
                      child: TextFormField(
                        initialValue: "Balance",
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.attach_money),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 15, right: 40),
                      child: TextFormField(
                        initialValue: "Message",
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
