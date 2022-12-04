import 'package:flutter/material.dart';

class FreeWCourses extends StatefulWidget {
  const FreeWCourses({Key? key}) : super(key: key);

  @override
  State<FreeWCourses> createState() => _FreeWCoursesState();
}

class _FreeWCoursesState extends State<FreeWCourses> {
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
                          "Free Courses by Top educators",
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
                      "Udemy & youtube Courses",
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
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freewcourses');
                              },
                              child:Image.asset(
                                'assets/cthree.png',
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
                                'Full stack development ( Mern ) with industrial experience with internship programe ',
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
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freeucourses');
                              },

                              child:Image.asset(
                                'assets/cfour.png',
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
                                'Google Data Analytics Professional Certificate This is your path to a career in data analytics.',
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
                      "Udacity and Courses",
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
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freewcourses');
                              },
                              child:Image.asset(
                                'assets/cone.png',
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
                                'Instructor-led Machine Learning Certification Training live online classes',
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
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'freeucourses');
                              },

                              child:Image.asset(
                                'assets/ctwo.png',
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
                                'Free Training: 12 Hour JavaScript Course. ✓ How to become a developer even if youre a complete beginner. 🛠️ Technologies you need.',
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
