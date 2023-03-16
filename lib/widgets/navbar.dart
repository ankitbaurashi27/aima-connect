// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:aima_connect/pages/about_us.dart';
import 'package:aima_connect/utils/colors.dart';
import 'package:aima_connect/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../pages/home.dart';



class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return AppBar(
      centerTitle: true,
      title: Text('AIMA', style: TextStyle(fontSize: 18.0),),
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(CupertinoIcons.line_horizontal_3),
        );
      }),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          navLogo(),
          Row(
            children: [
              NavBtn(text: 'Home', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
              NavBtn(text: 'Gallery', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
              NavBtn(text: 'Services', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
              NavBtn(text: 'Events', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
              NavBtn(text: 'Brouchers', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
             
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle2,
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );

              },
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }

}

  Widget navLogo() {
    return Container(
      width: 45,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/logo.jpg'))),
    );
  }


class NavBtn extends StatelessWidget {
  const NavBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        // style: ButtonStyle(backgroundColor: ,),
          style: borderedButtonStyle,
          onPressed:onPressed,
          child: Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  decorationColor: AppColors.primary))),
    );
  }
}
