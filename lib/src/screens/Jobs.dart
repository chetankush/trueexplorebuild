import 'dart:io';


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
    return
      Scaffold(
        backgroundColor: Colors.black,

        body:
        SafeArea(
          child:
          ListView(
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
                      height: 100,
                    ),

                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "All fields",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // welcome home


                    // const SizedBox(height: ,),

                    // welcome home
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
                                  Navigator.pushNamed(context, 'fieldmain');
                                },
                                child:Image.asset(
                                  'assets/fieldsimages/physics.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'Physics',
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
                          width: 125,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              InkWell(
                                onTap: (){},
                                child:Image.asset(
                                  'assets/fieldsimages/uiux.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'programming',
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
                          width: 125,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              InkWell(
                                onTap: (){},
                                child:Image.asset(
                                  'assets/fieldsimages/uiux.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'uiux',
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
                          width: 125,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              InkWell(
                                onTap: (){},
                                child:Image.asset(
                                  'assets/fieldsimages/army.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'Army',
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
                  )),
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
                                  Navigator.pushNamed(context, 'fieldmain');
                                },
                                child:Image.asset(
                                  'assets/fieldsimages/bio.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'Biology',
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
                          width: 125,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              InkWell(
                                onTap: (){},
                                child:Image.asset(
                                  'assets/fieldsimages/arch.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'Architecture',
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
                          width: 125,
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              InkWell(
                                onTap: (){},
                                child:Image.asset(
                                  'assets/fieldsimages/neuro.png',
                                  fit: BoxFit.fill,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Text(
                                  'Neurology',
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
                  )),

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
                        "Choose which field is best for you",
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
              ), //explore popular field text to use all over


              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 0,
                      ),
                      child: const Text(
                        "Most paid Jobs - for high earnings",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ), //header //most paid jobs

              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20,20,0,10),
                      child: Text(
                        "1. CEOs",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "2. Full stack software engineers",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),   Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "3. AI/ML engineers",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "4. Medical Professionals",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "5. Blockchain Developer",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ), //list for headers

              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 0,
                      ),
                      child: const Text(
                        "Most loved fields",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),  //most social jobs

              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20,20,0,10),
                      child: Text(
                        "1. Research",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "2. Social work",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),   Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 10,
                      ),
                      child: const Text(
                        "3. Technology",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ), //list


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
                        "Read These articles if you are confused about jobs and your career",
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
              ), //explore popular field text to use all over


              Container(
                height: 185,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bannerforfieldblogg.png'),
                      fit: BoxFit.fill,
                    )),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, top: 124, right: 6, bottom: 0),
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
                                minimumSize: const Size(100, 30),
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              onPressed: () {
                                Uri url = Uri.parse('https://mkaku.org/home/articles/so-you-want-to-become-a-physicist/');
                                // _launchUrl(url);

                              },

                              child: const Text('Explore Now'),
                              // onPressed:(){_launchUrl('https://work.chron.com/top-10-careers-world-25613.html');},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ), //jobs

              // Container(
              //   child: Column(
              //     children: [
              //       Container(
              //         width: double.infinity,
              //         height: 100,
              //
              //
              //
              //       ),
              //     ],
              //   ),
              // ),

            ],
          ),
        ),

      );
  }
}


Future<void> _launchUrl(Uri url) async {
  try {
    if (!await launchUrl(url)) {
      await _launchUrl(url
      );

    }
    else{
      throw 'Could not launch $url';
    }
  }
  catch(_){}

}