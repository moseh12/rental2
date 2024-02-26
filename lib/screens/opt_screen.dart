import 'package:flutter/material.dart';
import 'package:rental/components/horizontal_line.dart';

import 'package:rental/utils/constants.dart';
import 'package:rental/widgets/custom_button.dart';
import 'package:rental/widgets/opt_form.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Text(
                'Enter Code',
                style: kh1,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Tap the input Field to Enter 6-Character Code'),
              horizontalLine(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

              /*..........................Otp Form..............................*/
              const OptForm(),

              const SizedBox(
                height: 40,
              ),
              CustomButton(
                callback: () {
                  Navigator.pushNamed(context, 'Dashboard');
                },
                title: 'Continue',
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                'Resend',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
