import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YtPage extends StatefulWidget {
  const YtPage({Key? key}) : super(key: key);

  @override
  State<YtPage> createState() => _YtPageState();
}

class _YtPageState extends State<YtPage> {
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
    return  Scaffold( backgroundColor: Colors.black,

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
                    height: 75,
                  ),

                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Youtube playlist and channels",
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
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: 15,
                    ),
                    child: const Text(
                      "Playlists",
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
            ), //header //most paid jobs

            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Playlist 1'),
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
                        child: Text('watch now'),
                        onPressed: () {
                          _launchUrl(
                              'https://www.youtube.com/@MinutePhysics');
                        },
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
                      title: Text('Playlist 2'),
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
                        child: Text('watch now'),
                        onPressed: () {
                          _launchUrl(
                              'https://www.simplilearn.com/guide-to-pcm-career-options-after-12th-article');
                        },
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
                      vertical: 15,
                    ),
                    child: const Text(
                      "Channels",
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
            ), //header

            Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.white12,
                    child: ListTile(
                      // leading: Image.network(
                      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGijyZ0heyVR5jTw4gNVIXB9yoGEnijjjoZ-8vcoVEGJpT-NI7wl7E51EXpCY3EKziQk&usqp=CAU'),
                      title: Text('Fermilab'),
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
                        child: Text('watch now'),
                        onPressed: () {
                          _launchUrl('https://www.youtube.com/@fermilab');
                        },
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
                      title: Text('PBS spacetime'),
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
                        child: Text('watch now'),
                          onPressed: () {
                          _launchUrl(
                              'https://www.youtube.com/@pbsspacetime');
                        },
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
