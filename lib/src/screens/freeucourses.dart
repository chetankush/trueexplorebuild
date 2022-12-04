import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


launchURLBrowser() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}



class Freeu extends StatefulWidget {
  const Freeu({Key? key}) : super(key: key);

  @override
  State<Freeu> createState() => _FreeuState();
}

class _FreeuState extends State<Freeu> {
  final double horizontalPadding = 20;
  final double verticalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:

      SafeArea(
        child: ListView(
          children: [

            Container(

              height: 240,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/homedefault.png'),
                    fit: BoxFit.fill,
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: verticalPadding,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //menu icon
                          Image.asset(
                            'assets/icons/TrueExplore.png',
                            height: 40,
                            width: 120,
                          ),

                          // three bar icon

                          Image.asset(
                            'assets/icons/three_b.png',
                            width: 30,
                          ),
                        ],
                      )),

                  const SizedBox(
                    height: 75,
                  ),

                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Free Courses by Universities",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Text(
                      "EdX Courses",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ), // header2

            Container(

                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 260,
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 250,
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                             onTap: launchURLBrowser,
                              child:Image.asset(
                                'assets/freecone.png',
                                fit: BoxFit.fill,
                                width: 250,
                                height: 170,
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: Text(
                                'Princeton university -algorithms and data structures, with emphasis on applications and scientific performance analysis of Java implementation',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    inherit: true,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 250,
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freeucourses');
                              },

                              child:Image.asset(
                                'assets/freectwo.png',
                                fit: BoxFit.fill,
                                width: 250,
                                height: 170,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: Text(
                                'Calarts- Graphic Design Specialization Make Compelling Design. Learn and apply the principles of graphic de',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    inherit: true,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        )),
                  ],
                )),   //fre

            Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Text(
                      "Coursera Courses",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ), // header2


            Container(

                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 260,
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 250,
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freewcourses');
                              },
                              child:Image.asset(
                                'assets/freecone.png',
                                fit: BoxFit.fill,
                                width: 250,
                                height: 170,
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: Text(
                                'Princeton university -algorithms and data structures, with emphasis on applications and scientific performance analysis of Java implementation',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    inherit: true,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 250,
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freeucourses');
                              },

                              child:Image.asset(
                                'assets/freectwo.png',
                                fit: BoxFit.fill,
                                width: 250,
                                height: 170,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: Text(
                                'Calarts- Graphic Design Specialization Make Compelling Design. Learn and apply the principles of graphic de',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    inherit: true,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        )),
                  ],
                )),   //fre





          ],
        ),

      ),

    );
  }




}
