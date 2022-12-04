import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FieldMain extends StatefulWidget {
  const FieldMain({Key? key}) : super(key: key);

  @override
  State<FieldMain> createState() => _FieldMainState();
}

class _FieldMainState extends State<FieldMain> {
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
    return  Scaffold(
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
                          "Physics",
                          style: TextStyle(
                              fontSize: 56,
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
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: verticalPadding,
                    ),
                    child: const Text(
                      "Learn the fundamentals of physics from, most loved Resources",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(

                padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                width: double.infinity,
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 125,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'roadmaps');
                              },
                              child:Image.asset(
                                'assets/roadmaplogo.png',
                                fit: BoxFit.fill,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 125,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'websitesandbooks');
                              },
                              child:Image.asset(
                                'assets/websiteslogo.png',
                                fit: BoxFit.fill,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 125,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'youtube');
                              },
                              child:Image.asset(
                                'assets/ytlogo.png',
                                fit: BoxFit.fill,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )),


                  ],
                )
            ),




            Container(
              height: 80,
              width: 400,

              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fieldsimages/freecande.png'),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 0, top: 15, right: 4, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              minimumSize: const Size(80, 30),
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Go'),
                            onPressed: (){
                              Navigator.pushNamed(context, 'bfc');
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0,),
          ],
        ),

      ),

    );
  }
}
