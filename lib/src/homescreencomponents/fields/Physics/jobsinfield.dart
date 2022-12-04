import 'package:flutter/material.dart';

import 'data.dart';

class JobsInField extends StatefulWidget {
  const JobsInField({Key? key}) : super(key: key);

  @override
  State<JobsInField> createState() => _JobsInFieldState();
}

class _JobsInFieldState extends State<JobsInField> {
  final double horizontalPadding = 20;
  final double verticalPadding = 25;




  List<Application> applications = getApplications();


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
                    height: 75,
                  ),

                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Popular Jobs",
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







        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Padding(
                padding: EdgeInsets.only(right: 32, left: 32, top: 2, bottom: 10),
                child: Text(
                  "Recent Jobs  ( " + applications.length.toString() + " )",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    decoration: TextDecoration.none,
                    color: Colors.white,

                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 22, left: 22, bottom: 16),
                child: Column(
                  children: buildApplications(),
                ),
              ),

            ],
          ),
        )






          ],
        ),
      ),

    );
  }

  List<Widget> buildApplications(){
    List<Widget> list = [];
    for (var i = 0; i < applications.length; i++) {
      list.add(buildApplication(applications[i]));
    }
    return list;
  }

  Widget buildApplication(Application application){
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [

          Row(
            children: [

              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(application.logo),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),

              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          application.position,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          application.company,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),

                      ],
                    ),
                  )
              ),

               Icon(
                Icons.more_vert,
                color: Colors.white
              ),

            ],
          ),

          SizedBox(
            height: 16,
          ),

          Row(
            children: [

              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      application.status,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: application.status == "Opened" ? Colors.green[500] :
                        application.status == "Cancelled" ? Colors.red[500] : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Container(

                  child: Center(
                    child: Text(
                      r"$" + application.price + "/h",
                      style: TextStyle(
                        fontSize: 24,
                          decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );


  }
}

