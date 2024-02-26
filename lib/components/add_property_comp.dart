import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';



addPropertyTextField(String title) {
  return SizedBox(
    height: 50,
    child: TextFormField(
      style: const TextStyle(fontSize: 16),
      keyboardType: TextInputType.text,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 15,
        ),
        fillColor: const Color(0xfffafafa),
        filled: true,
        hintText: title,
        hintStyle: TextStyle(color: Colors.grey[500]),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.grey.shade300)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: primaryColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          // borderSide: BorderSide(color: Colors.orange)
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          //borderSide: BorderSide(color: Colors.orange)
        ),
      ),
    ),
  );
}
