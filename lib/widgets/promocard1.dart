// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget promoCard1( image, String title) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),

        ),
        child: Padding(
          padding: const EdgeInsets.only(top:170.0, left: 10.0),
          child: Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
    ),
  );
}