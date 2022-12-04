import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FreeCourses extends StatefulWidget {
  const FreeCourses({Key? key}) : super(key: key);

  @override
  State<FreeCourses> createState() => _FreeCoursesState();
}

class _FreeCoursesState extends State<FreeCourses> {


  final double horizontalPadding = 20;
  final double verticalPadding = 25;




  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);

    if (!await launchUrl(uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
                          "Free courses With Experts suggestions to learn",
                          style: TextStyle(
                            fontSize: 20,
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
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: verticalPadding,
                    ),
                    child: const Text(
                      "the branch of science concerned with the nature and properties of matter and energy. The subject matter of physics includes mechanics, heat, light and other radiation, sound, electricity, magnetism, and the structure of atoms.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
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
                      "Free Courses",
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
                        width: 260,
                        height: 260,
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










          ],
        ),
      ),
    );
  }
}
