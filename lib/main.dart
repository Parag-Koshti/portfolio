import 'package:flutter/material.dart';
import 'package:portfolio/Detail.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/project.dart';

import 'about.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: 'about',
     routes: {
       'home': (context) => MyHome(),
       'about':(context) =>  About(),
       'project':(context) => project(),
     },
    );
  }
}
