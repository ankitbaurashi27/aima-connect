// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/pages/events_screen.dart';
import 'package:aima_connect/pages/gallery_screen.dart';
import 'package:aima_connect/pages/home_screen.dart';
import 'package:aima_connect/pages/login_screen.dart';
import 'package:aima_connect/pages/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/constants.dart';
import 'about_us.dart';
import 'notification_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    HomeScreen(),
    EventScreenPage(),
    GalleryScreen(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        
        child: ListView(
           //scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              // decoration:  BoxDecoration(
              //    color: Color.fromRGBO(108, 99, 255, 2),
              // ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                accountName: Text('Ankit B'),
                accountEmail: Text('ankitb3242@mail.com')),
            ListTile(
              title: const Text('Login'),
              leading: Icon(Icons.login),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){},
            ),
             ListTile(
              title: const Text('Services'),
              leading: Icon(Icons.miscellaneous_services),
              onTap: (){},
            ),
             ListTile(
              title: const Text('Food'),
              leading: Icon(Icons.food_bank_sharp),
              onTap: (){},
            ),
             ListTile(
              title: const Text('AIMA Bulltein'),
              leading: Icon(Icons.notes),
              onTap: (){},
            ),
             ListTile(
              title: const Text('AIMA News'),
              leading: Icon(Icons.newspaper_rounded),
              onTap: (){},
            ),
            ListTile(
              title: const Text('Upcoming Events'),
              leading: Icon(Icons.movie),
              onTap: (){},
            ),
             ListTile(
              title: const Text('Contact Us'),
              leading: Icon(Icons.phone),
              onTap: (){},
            ),
           
            ListTile(
              title: const Text('About Us'),
              leading: Icon(Icons.info),
              onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
           ListTile(
              title: const Text('Log Out'),
              leading: Icon(Icons.logout_outlined),
              onTap: () {

              },
            ),
          ],
        ),
        
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 600 ? 

       Padding(
         padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 14.0),
         child: GNav(
          selectedIndex: _currentIndex,
          gap: 10,
          color: Colors.grey,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.blue,
          padding: const EdgeInsets.all(10),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: (Icons.slow_motion_video_sharp),
              text: 'Events',
            ),
            GButton(
              icon: Icons.photo,
              text: 'Photo Gallery',
            ),
            GButton(
              icon: Icons.notifications_active,
              text: 'Notifications',
            ),
          ],
          onTabChange: (index) {
           setState((){
              _currentIndex = index;
           });
          },
      ),
       ) :null,
    body: tabs[_currentIndex],
      // body: SingleChildScrollView(
      //   child: Column(
      //     // ignore: prefer_const_literals_to_create_immutables
      //     children: [
      //       Navbar(),
      //       Container1(),
      //       Container2(),
      //       Container3(),
      //       Container4(),
      //       Container5(),
      //       Footer(),
      //   ],
      //   ),
      // )
    );
  }
}