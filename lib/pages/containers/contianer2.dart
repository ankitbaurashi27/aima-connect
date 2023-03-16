// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:aima_connect/utils/colors.dart';
import 'package:aima_connect/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }

  Widget MobileContainer2() {
    return Container(
     
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: 
      Column(children: [
        
         Container(
          padding:  EdgeInsets.only(left:20,right: 20,bottom: 0,top: 20),
           child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                  ),
         ),

        Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            companyLogo(boschLogo),
            companyLogo(ceatLogo),
            companyLogo(mahindra1Logo),
          ]),
        )
      ],)
    );
  }

  // ignore: non_constant_identifier_names
  Widget DesktopContainer2() {
    return Container(
      height: 800,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(children: [
        Expanded(
          child: Stack(
            children: [
            
              Positioned(
                left: 43,
                right: 43,
                bottom:0,
                child: Container(
                  width: double.infinity,
                  height: 650,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(dashboard),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            companyLogo(boschLogo),
            companyLogo(ceatLogo),
            companyLogo(mahindra1Logo),
          ]),
        )
      ]),
    );
  }

  Widget companyLogo(String image){
    return Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}


// Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             // ignore: prefer_const_literals_to_create_immutables
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left:10.0),
//                 child: Text(
//                   'Explore',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue),
//                 ),
//               ),
//               Spacer(),
//               Icon(Icons.arrow_forward_ios, color: Colors.blue)
//             ],
//           ),
//           SizedBox(
//                       height: 15,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Container(
//                         height: 200,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: <Widget>[
//                             GestureDetector(
//                               child: promoCard1(news, 'News'), 
//                               onTap: (){},
//                             ),
//                             promoCard1(events, 'Events'),
//                             GestureDetector(child: promoCard1(illustration2, 'Gallery'),
//                             onTap: (){},
//                             ),
//                             promoCard1(eating, 'Food'),
//                           ],
//                         ),
//                       ),
//                     ),
//         ],
//       ),
//     );