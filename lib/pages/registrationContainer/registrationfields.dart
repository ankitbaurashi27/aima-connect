// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aima_connect/utils/constants.dart';
import 'package:aima_connect/utils/registration_inputfields.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegistrationFields extends StatefulWidget {
  const RegistrationFields({Key? key}) : super(key: key);

  @override
  State<RegistrationFields> createState() => _RegistrationFieldsState();
}

class _RegistrationFieldsState extends State<RegistrationFields> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: mobileRegFields(),desktop: desktopRegFields(),);
  }

  Widget mobileRegFields(){
    return Material(
      child: Container(
        color: Colors.white,
        height: 670,
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
                firstName,
                SizedBox(
                  height: 20,
                ),
                lastName,
                SizedBox(
                  height: 20,
                ),
                emailField,
                SizedBox(
                  height: 20,
                ),
                passwordField,
                SizedBox(
                  height: 20,
                ),
                confirmPasswordField,
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 16.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: Text("Regsiter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        )),
                    colorBrightness: Brightness.dark,
                    onPressed: () {
                      //   _loginAttempt(context);
                    },
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget desktopRegFields(){
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
                  firstName,
                  SizedBox(
                    height: 20,
                  ),
                  lastName,
                  SizedBox(
                    height: 20,
                  ),
                  emailField,
                  SizedBox(
                    height: 20,
                  ),
                  passwordField,
                  SizedBox(
                    height: 20,
                  ),
                  confirmPasswordField,
                  Container(
                    height: 70,
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 16.0),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: Text("Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                          )),
                      colorBrightness: Brightness.dark,
                      onPressed: () {
                        //   _loginAttempt(context);
                      },
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}