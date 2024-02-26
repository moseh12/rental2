import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';

Container reusableTextField(
    {@required String? hint, Icon? icon, String? controller}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: hint == 'Enter Password' ? true : false,
      autocorrect: false,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        prefixIcon: icon,
        contentPadding: const EdgeInsets.only(left: 16.0),
        suffixIcon: hint == 'Enter Password'
            ? GestureDetector(onTap: () {}, child: const Icon(Icons.visibility))
            : null,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xfff5f6f6),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    ),
  );
}
