import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:portfolio/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
enum SocialMeida{facebook,instagram,linkedin,whatsapp}

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {


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
    var SocialMedia;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: ShaderMask(
                shaderCallback: (bound) {
                  return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, bound.width, bound.height));
                },
                blendMode: BlendMode.dstIn,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/img.webp'),
                )
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: Column(
                children: [
                  Text(
                    'Hello I am',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Koshti Parag',
                    style: TextStyle(
                        foreground: Paint()..shader = hightGradient,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Gujarat Samachar Auditor',
                    style: TextStyle(
                        foreground: Paint()..shader = headerGradient,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      child: Text('Know more..',),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black
                      ),
                        onPressed: () => {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => MyHome()),
                        ),}
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      IconButton(onPressed: ()=> share(SocialMedia.instagram) , icon:FaIcon(FontAwesomeIcons.instagram,color: Colors.white,)),
                      IconButton(onPressed: ()=> share(SocialMedia.whatsapp), icon:FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,)),
                      IconButton(onPressed: ()=> share(SocialMedia.linkedin), icon:FaIcon(FontAwesomeIcons.linkedin,color: Colors.white,)),
                      IconButton(onPressed: ()=> share(SocialMedia.facebook), icon:FaIcon(FontAwesomeIcons.facebook,color: Colors.white,)),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Future share (SocialMeida SocialPlatform) async{
  final urls ={
    SocialMeida.whatsapp:'https://wa.link/8j05sy',
    SocialMeida.facebook:'https://www.facebook.com/parag.koshti.39?mibextid=ZbWKwL',
    SocialMeida.linkedin:'https://www.linkedin.com/in/koshti-parag',
    SocialMeida.instagram:'https://instagram.com/koshti_parag_2001?igshid=MzMyNGUyNmU2YQ==',

  };
}
