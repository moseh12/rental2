// ignore_for_file: avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental/screens/onboarding/onboarding_screen1.dart';

import 'package:rental/utils/colorscheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    init();
    // new Future.delayed(const Duration(seconds: 5), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (BuildContext context) => IntroductionPage()
    //       // SignUpWithOptions()
    //       ));
    // });
  }

  Future<Timer> init() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var status = prefs.getBool('isLoggedIn') ?? false;
   
    print(status);
    // print(PreferencesKeys.token.isNotEmpty);
    print("----------------2--------");

    if (mounted) {
      if (status) {
        print("----------------3--------");
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) =>
        Navigator.pushReplacementNamed(context, 'Dashboard');
        // ),
        //);
      } else {
        print("----------------4--------");
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const IntroductionPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.4),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/house.jpg')),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/splash_img.png',
            height: 350,
            width: 350,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
