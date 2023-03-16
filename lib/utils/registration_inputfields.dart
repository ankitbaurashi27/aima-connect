// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


final TextEditingController emailController =  TextEditingController();
final TextEditingController firstNameController = TextEditingController();
final TextEditingController lastNameController = TextEditingController();
final TextEditingController passwordController =  TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();


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

final firstName = TextFormField(
   style: TextStyle(color: Colors.blue),
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.name,
       validator: (value) {
          RegExp regexp =  RegExp(r'^.{3,}$');

          if (value!.isEmpty){
            return ("First Name cannot be empty");
          }

          if(!regexp.hasMatch(value)){
            return ("Enter Valid name Min 3. Characters");
          }
          return null;
      },

      onSaved: (value){
        firstNameController.text = value!;
      },
      
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        // fillColor: Colors.white,
        // filled: true,
        focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
        prefixIcon: Icon(Icons.person, color: Colors.blue,),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Company Name",
        hintStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
      ),
);

final lastName = TextFormField(
   style: TextStyle(color: Colors.blue),
      autofocus: false,
      controller: lastNameController,
      keyboardType: TextInputType.name,
     validator: (value) {
          if (value!.isEmpty){
            return ("Second Name cannot be empty");
          }
          return null;
      },
      onSaved: (value){
        lastNameController.text = value!;
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
        prefixIcon: Icon(Icons.person, color: Colors.blue,),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Full Name",
        hintStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
      ),
);

final passwordField = TextFormField(
  style: TextStyle(color: Colors.blue),
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      validator: (value) {
          RegExp regexp =  RegExp(r'^.{6,}$');

          if (value!.isEmpty){
            return ("Password is required for login");
          }

          if(!regexp.hasMatch(value)){
            return ("Please Enter Password of Min. 6 Characters");
          }
          return null;
      },

      onSaved: (value){
        passwordController.text = value!;
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
        prefixIcon: Icon(Icons.key, color: Colors.blue,),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
      ),
);

final confirmPasswordField = TextFormField(
  style: TextStyle(color: Colors.blue),
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: true,
      validator: (value) 
      {
        if(confirmPasswordController.text !=  passwordController.text){
               return "Password dont match";
        }
        return null;
      },

      onSaved: (value){
        confirmPasswordController.text = value!;
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
        prefixIcon: Icon(Icons.key, color: Colors.blue),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        hintStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
      ),
);