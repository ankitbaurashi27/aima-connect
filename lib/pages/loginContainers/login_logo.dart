// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aima_connect/pages/registration_screen.dart';
import 'package:aima_connect/utils/colors.dart';
import 'package:aima_connect/utils/constants.dart';
import 'package:aima_connect/utils/input_field.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginLogo extends StatefulWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  State<LoginLogo> createState() => _LoginLogoState();
}

class _LoginLogoState extends State<LoginLogo> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileLogin(),
      desktop: desktopLogin(),
    );
  }

  Widget mobileLogin() {
    return Material(
      child: Container(
        color: Colors.white,
        height: 620,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset(
                    logo,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                emailField,
                SizedBox(
                  height: 20,
                ),
                passwordField,
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 16.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: Text("Login",
                        style: TextStyle(color: Colors.white, fontSize: 18.0)),
                    colorBrightness: Brightness.dark,
                    onPressed: () {
                      //   _loginAttempt(context);
                    },
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget desktopLogin() {
    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          height: 800,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                    child: Image.asset(
                      logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  emailField,
                  SizedBox(
                    height: 20,
                  ),
                  passwordField,
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 16.0),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: Text("Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                      colorBrightness: Brightness.dark,
                      onPressed: () {
                        //   _loginAttempt(context);
                      },
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegistrationScreen()));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
