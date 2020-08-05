import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
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
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: ToggleButtons(
              color: Colors.white,
              selectedColor: Colors.indigoAccent[700],
              renderBorder: false,
              isSelected: [true, false, false],
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
                        borderRadius: BorderRadius.circular(30)),
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
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(MdiIcons.bank),
                        Text(
                          "Bank to Bank",
                          style: GoogleFonts.robotoCondensed(),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
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
                            style: GoogleFonts.robotoCondensed(fontSize: 20.0),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 3),
                          IconButton(
                            icon: Icon(Icons.more_horiz),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Container(
                        height: 125,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              CustomCard(text: "Alexander"),
                              CustomCard(text: "Jessica L"),
                              CustomCard(text: "Marwan J"),
                              CustomCard(text: "Junaedi"),
                              CustomCard(text: "Alexander"),
                              CustomCard(text: "Jessica L"),
                              CustomCard(text: "Marwan J"),
                              CustomCard(text: "Junaedi"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60.0, right: 60),
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
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Recipient",
                            hintStyle:
                                GoogleFonts.robotoCondensed(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 15, right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          prefixIcon: Icon(Icons.attach_money),
                          hintText: "Balance",
                          hintStyle:
                              GoogleFonts.robotoCondensed(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 15, right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          prefixIcon: Icon(Icons.mail_outline),
                          hintText: "Message",
                          hintStyle:
                              GoogleFonts.robotoCondensed(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, top: 50, right: 50),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 100,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.indigoAccent[700],
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Confirm",
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 15),
                              Icon(MdiIcons.sendOutline),
                            ],
                          ),
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
