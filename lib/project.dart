//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 252),
    Color.fromARGB(255, 33, 170, 97),
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));
  final Shader hightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 255, 0),
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
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.greenAccent,
        title: Text(
          "PROJECTS",
          style: TextStyle(fontWeight: FontWeight.bold,foreground: Paint()..shader=headerGradient),
        ),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      body: ListView(
       children: [
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
           expandedCrossAxisAlignment: CrossAxisAlignment.center,
            expandedAlignment: Alignment.center,
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/dart1.webp"),
            ),
             title: Text("SingUp",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/SignUP-LogIN",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("API",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/Api-services",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/PROFILE",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("BMI",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/BodyMassIndex",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),

             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("News_app",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/newsapp",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("Calculter",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/calculater",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
             expandedAlignment: Alignment.center,
             leading: CircleAvatar(
               backgroundColor: Colors.black,
               backgroundImage: AssetImage("assets/dart1.webp"),
             ),
             title: Text("Ebook_ui",style: TextStyle(color: Colors.white,fontSize: 20),),
             children: [
               Text("https://github.com/Parag-Koshti/ebook",style: TextStyle(foreground: Paint()..shader = OverallTextGradient),),
               SizedBox(height: 20,),
               Icon(FontAwesomeIcons.infoCircle,color: Colors.grey),
             ],
             childrenPadding: EdgeInsets.all(10),
             initiallyExpanded: true,
             collapsedBackgroundColor: Colors.black,
             collapsedIconColor: Colors.lightGreen,
             collapsedTextColor: Colors.lightGreen,
             backgroundColor: Colors.black,
             textColor: Colors.black,
             iconColor: Colors.lightGreen,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
             ),
           ),
         )
       ],
      )
    );
  }
}
