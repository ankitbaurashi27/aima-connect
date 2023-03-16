// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class AboutContainer6 extends StatelessWidget {
  const AboutContainer6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: aboutMobileContainer6(), desktop: aboutDesktopContainer6(),);
  }

 Widget aboutMobileContainer6(){
  return  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Executive Committee for 2022-2024',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  
                ),
            ),
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                  ScrollWidgetMobile(name: 'Viraj Gadkari', image: "assets/images/viraj-gadkari.jpg",designation: 'Chairman AIMA App',),
                  SizedBox(height: 20,),
                  ScrollWidget(name: 'Jaideep Alimchandani', image: "assets/images/Jaideep-Alimchandani.jpg",),
                  SizedBox(height: 20,),
                   ScrollWidget(name: 'Jitendra Aher', image: "assets/images/Jitendra-Aher.jpg",),
                  SizedBox(height: 20,),
                  ScrollWidget(name: 'Prerna Bele', image: "assets/images/Prerana-Bele.jpg",),
                  SizedBox(height: 20,),
                  ScrollWidget(name: 'S-S-Bhogal', image: "assets/images/S-S-Bhogal.jpg",),
                  SizedBox(height: 20,),
                  ScrollWidget(name: 'Avinash-Bodke', image: "assets/images/Avinash-Bodke.jpg",),
                  SizedBox(height: 20,),
                  ScrollWidget(name: 'Avinash-Marathe', image: "assets/images/Avinash-Marathe.jpg",),
              ],
              ),
          ),
        ],
      );
 }

  Widget aboutDesktopContainer6(){
      return Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Executive Committee for 2022-2024',
                style: TextStyle(
                    fontSize: w! / 50,
                    fontWeight: FontWeight.bold,
                    height: 2.0,
                  ),
              ),
            ),
            Container(
              height: 300,
              child: ListView(            
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                    ScrollWidget(name: 'Viraj Gadkari', image: "assets/images/viraj-gadkari.jpg",),
                    SizedBox(height: 20,),
                    ScrollWidget(name: 'Jaideep Alimchandani', image: "assets/images/Jaideep-Alimchandani.jpg",),
                    SizedBox(height: 20,),
                     ScrollWidget(name: 'Jitendra Aher', image: "assets/images/jitendra-aher.jpg",),
                    SizedBox(height: 20,),
                    ScrollWidget(name: 'Prerna Bele', image: "assets/images/Prerana-Bele.jpg",),
                    SizedBox(height: 20,),
                    ScrollWidget(name: 'S-S-Bhogal', image: "assets/images/S-S-Bhogal.jpg",),
                    SizedBox(height: 20,),
                    ScrollWidget(name: 'Avinash-Bodke', image: "assets/images/Avinash-Bodke.jpg",),
                    SizedBox(height: 20,),
                    ScrollWidget(name: 'Avinash-Marathe', image: "assets/images/Avinash-Marathe.jpg",),
                ],
                ),
            ),
          ],
        ),
      );
  }
}