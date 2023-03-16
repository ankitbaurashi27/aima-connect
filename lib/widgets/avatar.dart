// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Avtar extends StatelessWidget {
  const Avtar({Key? key, required this.name, required this.designation, required this.image}) : super(key: key);

  final String name;
  final String designation;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
          CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 100,
                ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0,vertical:2.0),
            child: Center(
              child: Text(name,
              style: TextStyle(fontSize: 16.0),
              ),
              
            ),
          ),
           Center(
             child: Text(designation,
             style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
             ),
           )
      ],
    );
  }
}

class ScrollWidgetMobile extends StatelessWidget {
  const ScrollWidgetMobile({Key? key,required this.name, required this.designation,required this.image}) : super(key: key);
  
  final String name;
  final String designation;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      children: [
        Container(
        width: 200,
        height: 200,
        child:  CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 50,
                    ),
       ),
        Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0,vertical:2.0),
            child: Center(
              child: Text(name,
              style: TextStyle(fontSize: 16.0),
              ),
              
            ),
          ),
           Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0,vertical:2.0),
            child: Center(
              child: Text(designation,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              
            ),
          ),
      ] 
    ),
  );  
  }
}

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({Key? key, required this.name, required this.image}) : super(key: key);

  final String name;

  final String image;

  @override
  Widget build(BuildContext context) {
       return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      children: [
        Container(
        width: 200,
        height: 200,
        child:  CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 100,
                    ),
       ),
        Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0,vertical:2.0),
            child: Center(
              child: Text(name,
              style: TextStyle(fontSize: 16.0),
              ),
              
            ),
          ),
      ] 
    ),
  );  
  }
}