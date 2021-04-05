import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psycare/BlogHomeOnePage.dart';
import 'dart:ui';
import './quiz.dart';
import 'package:psycare/HomeDoc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Widget homesvg = new SvgPicture.asset(
    "assets/svg/home.svg",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.5)),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                // ? NavBar
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.menu),
                        tooltip: 'Menu',
                        onPressed: () {
                          print("Menu");
                        },
                      ),
                      // FontAwesomeIcons.hamburger,
                      Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white, // red as border color
                          ),
                          borderRadius: BorderRadius.circular(150),
                          // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: SvgPicture.asset("assets/svg/user.svg"),
                      )
                    ],
                  ),
                ),

                // ? Cards Section
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Container(
                    child: Card(
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("assets/images/yoga.png"),
                          ),
                        ),
                      ),
                    ),
                    decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                          color: Theme.of(context).primaryColor,
                          blurRadius: 50.0,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Welcome!!!',
                        style: GoogleFonts.averiaSansLibre(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Damon Salvatore',
                        style: GoogleFonts.averiaSansLibre(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),

                // ? Operations
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Card(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeDoc()),
                              );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "Doctor",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.averiaSansLibre(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.lightBlue.shade400,
                                        // Colors.lightBlue.shade200
                                        Theme.of(context).primaryColor
                                      ])),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Card(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizApp()));
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "Tests and Assesment",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.averiaSansLibre(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.lightBlue.shade400,
                                        // Colors.lightBlue.shade200
                                        Theme.of(context).primaryColor
                                      ])),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Card(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlogHomeOnePage()),
                              );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "Quotes",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.averiaSansLibre(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.lightBlue.shade400,
                                        // Colors.lightBlue.shade200
                                        Theme.of(context).primaryColor
                                      ])),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
