import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(lang, title, desc, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff252525),
        child: Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              lang,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              desc,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white70,
                  size: 18,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  star,
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          'Projects',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            myPro("Flutter", "Crypto App",
                "An app through which you can see latest crpto rates", "5"),
            myPro("Flutter", "Crypto App",
                "An app through which you can see latest crpto rates", "5"),
            myPro("Flutter", "Crypto App",
                "An app through which you can see latest crpto rates", "5"),
            myPro("Flutter", "Crypto App",
                "An app through which you can see latest crpto rates", "5"),
          ]),
        ),
      ),
    );
  }
}
