import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';


 Container horizontalLine(){
    return   Container(
      height: 5,
      width: 70,
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor),
    );
  }
