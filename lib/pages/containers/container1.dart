// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:aima_connect/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return ScreenTypeLayout(
        mobile: MobileContainer1(), desktop: DesktopContainer1());
  }

  Widget MobileContainer1() {
    return Container(
      child: Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Promoting Welfare',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Of The Industries',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Expanded(
                    child: Container(
                  height:300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(illustration1), fit: BoxFit.contain),
                  ),
                )),
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
      ]),
    );
  }

  /// ====== DESKTOP ==========
  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promoting Welfare \nof the Industries',
                  style: TextStyle(
                    fontSize: w! / 24,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'AMBAD Industries & Manufactures Association',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                        ),
                        onPressed: () {},
                        label: Text('Explore More'),
                        icon: Icon(Icons.arrow_circle_right_outlined),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
          // Expanded(
          //     child: Container(
          //   height: 540,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(illustration1), fit: BoxFit.contain),
          //   ),
          // )),

          Expanded(
              child: Container(
            height: 540,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain),
            ),
          )),
        ],
      ),
    );
  }
}
