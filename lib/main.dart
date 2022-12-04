import 'package:flutter/material.dart';
import 'package:trueexplorebuild/src/authentication/login.dart';
import 'package:trueexplorebuild/src/authentication/signup.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/FieldMain.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/Roadmaps.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/bestfreecourses.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/jobsinfield.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/websitesandbooks.dart';
import 'package:trueexplorebuild/src/screens/Home_container.dart';
import 'package:trueexplorebuild/src/screens/Jobs.dart';
import 'package:trueexplorebuild/src/screens/freeucourses.dart';
import 'package:trueexplorebuild/src/screens/freewcourses.dart';
import 'package:trueexplorebuild/src/homescreencomponents/fields/Physics/youtubepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLogin(),
        'signup': (context) => const MySignup(),
        'homepage': (context) => const HomeContainer(),
        'fieldmain': (context) => const FieldMain(),
        'bfc': (context) => const FreeCourses(),
        'jobs': (context) => const Jobs(),
        'freeucourses': (context) => const Freeu(),
        'freewcourses': (context) => const FreeWCourses(),
        'roadmaps': (context) => const Roadmaps(),
        'websitesandbooks': (context) => const WandBooks(),
        'youtube': (context) => const  YtPage(),
        'jandi': (context) => const  JobsInField(),
      },
    )
  );
}


