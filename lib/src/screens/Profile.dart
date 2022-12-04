import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}



class _ProfileState extends State<Profile> {
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
                    height: 40,
                  ),

                  // welcome home
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Material(
                                  elevation: 8,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                    splashColor: Colors.black,
                                    onTap: () {},
                                    child: Ink.image(
                                      image: AssetImage('assets/imagep.jpg'),
                                      height: 65,
                                      width: 65,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              Text(
                                ' Hello, learner',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // const SizedBox(height: ,),

                  // welcome home
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Top Maths Career Options'),
                      textColor: Colors.white,
                      subtitle: Text(''),

                      // subtitle: Text(''),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100, 40),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        child:  Text('Read Now'),
                        onPressed:(){_launchUrl('https://www.simplilearn.com/guide-to-pcm-career-options-after-12th-article');},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Top Commerce Career Options'),
                      textColor: Colors.white,
                      subtitle: Text(''),

                      // subtitle: Text(''),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100, 40),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        child:  Text('Read Now'),
                        onPressed:(){_launchUrl('https://www.simplilearn.com/guide-to-pcm-career-options-after-12th-article');},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Top Art Career Options'),
                      textColor: Colors.white,
                      subtitle: Text(''),

                      // subtitle: Text(''),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100, 40),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        child:  Text('Read Now'),
                        onPressed:(){_launchUrl('https://www.simplilearn.com/guide-to-pcm-career-options-after-12th-article');},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Top Agricultural Career Options'),
                      textColor: Colors.white,
                      subtitle: Text(''),

                      // subtitle: Text(''),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100, 40),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        child:  Text('Read Now'),
                        onPressed:(){_launchUrl('https://www.simplilearn.com/guide-to-pcm-career-options-after-12th-article');},
                      ),
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

