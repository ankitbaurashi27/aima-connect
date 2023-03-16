import 'package:aima_connect/utils/colors.dart';
import 'package:flutter/material.dart';


ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    // ignore: prefer_const_constructors
    side: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(8),
  ),),
);

ButtonStyle borderedButtonStyle2 = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: BorderSide(color: AppColors.primary),
    borderRadius: BorderRadius.circular(8),
  ),),

);


TextStyle aboutSubtitle = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 16
);

TextStyle aboutDesktopSubtitle = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 18
);