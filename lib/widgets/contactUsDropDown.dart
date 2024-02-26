// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContactUsDropDown extends StatefulWidget {
  const ContactUsDropDown({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactUsDropDownState createState() => _ContactUsDropDownState();
}

class _ContactUsDropDownState extends State<ContactUsDropDown> {
  final List<dynamic> _countryCode = ['+1', '+92', "+61", '+31', '+51', '+269'];
  dynamic _countryValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          color: const Color(0xfffafafa),
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.grey.shade300)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          iconEnabledColor: Colors.grey[500],
          iconDisabledColor: Colors.grey[500],
          hint: Text(
            '+1',
            style: TextStyle(color: Colors.grey[500]),
          ),
          style: TextStyle(color: Colors.grey[500]),
          value: _countryValue,
          onChanged: (newValue) {
            setState(() {
              _countryValue = newValue;
            });
          },
          items: _countryCode.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          isExpanded: true,
        ),
      ),
    );
  }
}
