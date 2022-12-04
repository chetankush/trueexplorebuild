import 'package:flutter/material.dart';

// import '../data/homepagedata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 20;
  final double verticalPadding = 25;

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
                      children: const [
                        Text(
                          "A community for Learning",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'and future guidence',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  // const SizedBox(height: ,),

                  // welcome home
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
                          child: const Text('Explore Now'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 204, 204, 204),
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
                      "Explore Popular Fields",
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


            // SizedBox(
            //   height: 140,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       buildCard(),
            //       const SizedBox(width: 5,
            //
            //       ),
            //
            //       buildCard(),
            //       const SizedBox(width: 5),
            //       buildCard(),
            //       const SizedBox(width: 5),
            //       buildCard(),
            //       const SizedBox(width: 5),
            //       buildCard(),
            //       const SizedBox(width: 5),
            //       buildCard(),
            //     ],
            //   ),
            // ),
            //
            // SizedBox(
            //
            //     height: 180,
            //
            //     child: ListView.separated(
            //       separatorBuilder: (contex, index) {
            //         return const SizedBox(
            //           width: 10,
            //         );
            //       },
            //       scrollDirection: Axis.horizontal,
            //       itemCount: DataModelzero.items.length,
            //       itemBuilder: ((context, index) {
            //         return ItemShowzero(
            //           item: DataModelzero.items[index],
            //         );
            //       }),
            //     )),
            //

            Container(

                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 100,
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 100,
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
                        width: 100,
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
                        width: 100,
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
                        width: 100,
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

              height: 210,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black12,
                  image: DecorationImage(
                image: AssetImage('assets/homepagekabanner.png'),
                fit: BoxFit.fill,

              )),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 0, top: 144, right: 6, bottom: 0),
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
                            child: const Text('Explore Now'),
                            onPressed: () {
                              Navigator.pushNamed(context, 'jobs');
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ), //jobs banner

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
                height: 200,
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
                                'Top Educators',
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
                                'Top Universities',
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
                )),   //free courses


            //
            // SizedBox(
            //
            //     height: 180,
            //
            //     child: ListView.separated(
            //       separatorBuilder: (contex, index) {
            //         return const SizedBox(
            //           width: 10,
            //         );
            //       },
            //       scrollDirection: Axis.horizontal,
            //       itemCount: DataModel.items.length,
            //       itemBuilder: ((context, index) {
            //         return ItemShow(
            //           item: DataModel.items[index],
            //         );
            //       }),
            //     )),
          ],
        ),
      ),
    );
  }

  // Widget buildCard() => Container(
  //     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
  //     width: 95,
  //     height: 95,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Image.asset(
  //           'assets/fieldsimages/physics.png',
  //           fit: BoxFit.fill,
  //           height: 95,
  //           width: 95,
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         const Expanded(
  //           child: Text(
  //             'Physics',
  //             style: TextStyle(
  //                 fontSize: 12,
  //                 fontWeight: FontWeight.bold,
  //                 fontFamily: 'Roboto',
  //                 inherit: true,
  //                 color: Colors.white,
  //                 decoration: TextDecoration.none),
  //           ),
  //         ),
  //       ],
  //     ));

}

//
// class ItemShow extends StatelessWidget {
//   final Item item;
//
//   const ItemShow({super.key, required this.item});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//
//       height: 170,
//       child: Column(
//         children: [
//           Image(
//             width: 190,
//             height: 140,
//             image: AssetImage(item.image),
//             fit: BoxFit.fill,
//           ),
//           const SizedBox(height: 10,),
//           Expanded(
//             child: Text(
//               item.name,
//               style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Roboto',
//                   inherit: true,
//                   color: Colors.white,
//                   decoration: TextDecoration.none),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ItemShowzero extends StatelessWidget {
//   final Item item;
//
//   const ItemShowzero({super.key, required this.item});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       child: Column(
//         children: [
//           Image(
//             width: 100,
//             height: 100,
//             image: AssetImage(item.image),
//             fit: BoxFit.fill,
//           ),
//           const SizedBox(height: 10,),
//           Expanded(
//             child: Text(
//               item.name,
//               style: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Roboto',
//                   inherit: true,
//                   color: Colors.white,
//                   decoration: TextDecoration.none),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
