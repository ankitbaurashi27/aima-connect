// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final TextEditingController emailController =  TextEditingController();
final TextEditingController passwordController =  TextEditingController();


final emailField = TextFormField(

      style: TextStyle(color: Colors.blue),
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Enter valid mail");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.blue,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );


final passwordField = TextFormField(
      style: TextStyle(color: Colors.blue),
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        RegExp regexp = new RegExp(r'^.{6,}$');

        if (value!.isEmpty) {
            return ('Password cannot be empty');
        }

        if (!regexp.hasMatch(value)) {
          return ("Please Enter Password of Min. 6 Characters");
        }
        return null;
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          prefixIcon: Icon(
            Icons.key,
            color: Colors.blue,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
