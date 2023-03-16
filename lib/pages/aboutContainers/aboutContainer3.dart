import 'package:aima_connect/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class AboutContainer3 extends StatelessWidget {
  const AboutContainer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: aboutMobileContainer3(), desktop: aboutDesktopContainer3(),);
  }

  Widget aboutMobileContainer3(){
    return  Expanded
      (
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[

                  const Text(
                    'Presidents\'s Message',
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height:200,
                    child: Image.asset(president, fit:BoxFit.cover),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('We cannot become what we want, by remaining what we are!', style: aboutSubtitle,),
                  Text('Digital Transformation is the need of the hour and with that in mind AIMA has taken the initiative of developing the AIMA App and website, to provide Nashik industrialists access to information and data.', style: aboutSubtitle,),
                  Text('Ones presence on a digital level gives the ability to reach content and knowledge, for improving business processes and operational efficiency.', style: aboutSubtitle),
                  Text('The AIMA App and website are an effort towards aiding the Nashik industrial fraternity to have an opportunity to connect with the association, use the member directory, log in their grievances and get inputs regarding latest events and programs planned by the association.', style: aboutSubtitle,),
                  Text('I look forward to adding value by providing an industrial environment that empowers people, boosts growth and creates opportunities in Nashik.', style: aboutSubtitle,),
                ],
              ),
            ),
          ]),
    );
  }

  Widget aboutDesktopContainer3(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(

                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(president), fit: BoxFit.contain),
                ),
              )),
          Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Presidents\'s Message',
                      style:  TextStyle(
                        fontSize: w! / 40,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('We cannot become what we want, by remaining what we are!', style: aboutDesktopSubtitle,),
                    const SizedBox(height: 5,),
                    Text('Digital Transformation is the need of the hour and with that in mind AIMA has taken the initiative of developing the AIMA App and website, to provide Nashik industrialists access to information and data.', style: aboutDesktopSubtitle,),
                    const SizedBox(height: 5,),
                    Text('Ones presence on a digital level gives the ability to reach content and knowledge, for improving business processes and operational efficiency.', style: aboutDesktopSubtitle),
                    const SizedBox(height: 5,),
                    Text('The AIMA App and website are an effort towards aiding the Nashik industrial fraternity to have an opportunity to connect with the association, use the member directory, log in their grievances and get inputs regarding latest events and programs planned by the association.', style: aboutDesktopSubtitle,),
                    const SizedBox(height: 5,),
                    Text('I look forward to adding value by providing an industrial environment that empowers people, boosts growth and creates opportunities in Nashik.', style: aboutDesktopSubtitle,),

                  ],
                ),
              )),
        ],
      ),
    );
  }

}



