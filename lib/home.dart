import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Detail.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/project.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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

  mySkills(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = OverallTextGradient),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpecilization(icon, text) {
    return Container(
      width: 115,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                    foreground: Paint()..shader = hightGradient, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: Icon(Icons.menu, color: Colors.white),
          color: Colors.black,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  "Projects",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => project()),
                  )
                },
              ),
              value: 2,
            ),
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  "Details",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details()),
                  )
                },
              ),
              value: 1,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 19, 16, 16),
              Color.fromARGB(255, 0, 0, 0),
            ])),
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.4, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
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
                      radius: 180,
                      backgroundImage: AssetImage('assets/pk.jpg'),
                    )
                  ),
                ),
              /* Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.49),
                  child: Column(
                    children: [
                      Text(
                        'Koshti Parag',
                        style: TextStyle(
                            foreground: Paint()..shader = hightGradient,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'Gujarat Samachar Auditor',
                        style: TextStyle(
                            foreground: Paint()..shader = headerGradient,
                            fontSize: 20),
                      ),

                    ],
                  ),
                )
              */
              ],
            ),
          ),
          builder: (context, state) {
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.
            return Container(
                height: 500,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          mySkills('30+', 'certificates'),
                          mySkills('3', 'projects'),
                          //mySkills('P', 'ravinnbhai'),

                        ],
                      ),
                     /* Column(
                        children: [
                          Text(
                            'Specilized In',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),*/
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Specilized In',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mySpecilization(FontAwesomeIcons.laptopCode, 'flutter'),
                              mySpecilization(FontAwesomeIcons.html5, 'html'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mySpecilization(FontAwesomeIcons.css3, 'css'),
                              mySpecilization(
                                  FontAwesomeIcons.figma, 'figma'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mySpecilization(
                                  FontAwesomeIcons.github, 'github'),
                              mySpecilization(
                                  FontAwesomeIcons.file, 'file handling'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),


                        ],
                      ),
                    ]
                ));
          },
        ),
      ),
    );
  }
}
