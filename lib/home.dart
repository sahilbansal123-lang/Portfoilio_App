import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchieve(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "soho"),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            type,
            style: TextStyle(
              fontFamily: "Soho",
            ),
          ),
        )
      ],
    );
  }

  mySpec(icon, type) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                type,
                style: TextStyle(color: Colors.white, fontSize: 16),
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
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'about');
                },
              ),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(0, -60), // shift the image upwards by 50 pixels
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height),
                      );
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/myImagepng.png',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      'Sahil Bansal',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Android Developer',
                      style: TextStyle(
                        fontFamily: "Soho",
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        builder: (context, state) {
          return Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 20),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myAchieve('78', 'Project'),
                          myAchieve('65', 'clients'),
                          myAchieve('10', 'work'),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Specialized In',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(Icons.android, 'Android'),
                              mySpec(Icons.flutter_dash, 'Flutter'),
                              mySpec(Icons.javascript, 'JavaScript')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(Icons.android, 'Android'),
                              mySpec(Icons.flutter_dash, 'Flutter'),
                              mySpec(Icons.javascript, 'JavaScript')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(Icons.android, 'Android'),
                              mySpec(Icons.flutter_dash, 'Flutter'),
                              mySpec(Icons.javascript, 'JavaScript')
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
