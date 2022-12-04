import 'package:flutter/material.dart';
import 'package:trueexplorebuild/src/screens/Profile.dart';

import '../homescreencomponents/fields/Physics/jobsinfield.dart';
import 'Homepage.dart';
import 'Profile.dart';
import 'Jobs.dart';


class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  PageController _pageController = PageController();
  List<Widget> _screens = [HomePage(), Jobs(),JobsInField(),Profile(), ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      //
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.white,
            focusColor: Colors.white,
            indicatorColor: Colors.white,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`

        child:  BottomNavigationBar(
          // fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(
               icon: new Image.asset("assets/icons/home.png",    height: 20,    width: 20, ),

              // icon:  Icon(Icons.home,
              //   color: _selectedIndex == 0 ? Colors.white : Colors.grey,),
              label: 'Home',
            ),
             BottomNavigationBarItem(

               icon: new Image.asset("assets/icons/roadmaps.png",    height: 20,    width: 20,),
                // color: _selectedIndex == 1 ? Colors.white : Colors.grey,),
               label: 'Fields',
            ),

            BottomNavigationBarItem(
              icon: new Image.asset("assets/icons/jobs.png",    height: 20,    width: 20,),
              // icon:  Icon(Icons.accessibility_new,
              //   color: _selectedIndex == 2 ? Colors.white : Colors.grey,),
              label: 'Jobs',
            ),

            BottomNavigationBarItem(
              icon: new Image.asset("assets/icons/avatar.png",    height: 20,    width: 20,),
              // icon:  Icon(Icons.accessibility_new,
              //   color: _selectedIndex == 2 ? Colors.white : Colors.grey,),
              label: 'Help',
            ),
          ],

          selectedItemColor: Colors.white,
        ),
      ),

    );
  }
}
