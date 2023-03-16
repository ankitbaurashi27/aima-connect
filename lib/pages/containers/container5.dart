import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commanContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: mobileContainer5(), desktop: desktopContainer5(),);
  }

  Widget mobileContainer5(){
    return commonMobileContainer(
      'AIMA Mission',
      'Bringing New Industries,\nIndustry Institute Interaction ', 
      'Generate Healthy Employee-Employer Relationship',
      mission,
      );
  }

  Widget desktopContainer5(){
    return commonContainer(
      'AIMA Mission',
      'Bringing New Industries,\nIndustry Institute Interaction ', 
      'Generate Healthy Employee-Employer Relationship',
      mission,
      false
      );
  } 
}