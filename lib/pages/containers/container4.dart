import 'package:aima_connect/utils/constants.dart';
import 'package:aima_connect/widgets/commanContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: mobileContainer4(), desktop: desktopContainer4(),);
  }
  
  Widget mobileContainer4(){
    return  commonMobileContainer(
      'From President\'s Desk',
      'Let us together strive for Excellence', 
      'Mr. Nikhil Panchal\n AIMA President 2022-24',
      president,
      );
  }

  Widget desktopContainer4(){
    return commonContainer(
      'From President\'s Desk',
      'Let us together strive for Excellence', 
      'Mr. Nikhil Panchal\n AIMA President 2022-24',
      president,
      true
      );
  }
}