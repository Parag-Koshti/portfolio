import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 252),
    Color.fromARGB(255, 33, 170, 97),
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));
  final Shader OverallTextGradient = LinearGradient(
    colors: <Color>[
      Color(0xff1f005c),
      Color(0xff5b0060),
      Color(0xff870160),
      Color(0xffac255e),
      Color(0xffca485c),
      Color(0xffe16b5c),
      Color(0xfff39060),
      Color.fromARGB(255, 255, 89, 0),
    ],
  ).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Education",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = headerGradient),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.schoolFlag,color: Colors.grey,),
                        Text(
                          "HSC(12th)",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                             color: Colors.red),
                        ),
                        Text(
                          "SWASTIK VIDHYA VIHAR HIGH SCHOOL",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      Text(
                        "2018-2019",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.school,color: Colors.grey,),
                        Text(
                          "B.com",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text(
                          "N.M.ZALA COMMERCE COLLEGE",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "2019 - 2022 ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.university,color: Colors.grey,),
                        Text(
                          "MCA",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text(
                          "LJ UNIVERSITY",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "2022-Present",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
