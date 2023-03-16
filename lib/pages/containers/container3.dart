// ignore_for_file: non_constant_identifier_names

import 'package:aima_connect/utils/constants.dart';
import 'package:aima_connect/widgets/commanContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: MobileContainer3(), desktop: DesktopContainer3(),);
  }
  
  Widget MobileContainer3(){
    return commonMobileContainer(
      'About AIMA',
      'By instilling professionalism among members', 
      'Imparting knowledge and information through Seminars, workshops, arranging training sessions to improve work culture as well as organizational climate', 
      illustration4,
      
    );
  }

  Widget DesktopContainer3(){
    return commonContainer(
      'About AIMA',
      'By instilling professionalism among members', 
      'Imparting knowledge and information through Seminars, workshops, arranging training sessions to improve work culture as well as organizational climate', 
      illustration4,
      false
      );
  }
}