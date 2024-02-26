// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:rental/utils/colorscheme.dart';

import '../screens/home.dart';
import '../screens/opt_screen.dart';
import '../screens/sign_in.dart';
import '../screens/sign_up.dart';

class CustomBottomNavigatioBar extends StatefulWidget {
  const CustomBottomNavigatioBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigatioBarState createState() =>
      _CustomBottomNavigatioBarState();
}

class _CustomBottomNavigatioBarState extends State<CustomBottomNavigatioBar> {
  int _currentTab = 0;
  Widget currentScreen = const Home();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 55,
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen = const Home();
                        _currentTab = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: _currentTab == 0
                              ? primaryColor
                              : const Color(0xffb2b2b2),
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen = const SignInScreen();
                        _currentTab = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.chat_bubble,
                          color: _currentTab == 1
                              ? primaryColor
                              : const Color(0xffb2b2b2),
                        ),
                        const Text('Chat', style: TextStyle(fontSize: 12))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen = const SignUpScreen();
                        _currentTab = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: _currentTab == 2
                              ? primaryColor
                              : const Color(0xffb2b2b2),
                        ),
                        const Text('Notifications',
                            style: TextStyle(fontSize: 12))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen = const OtpScreen();
                        _currentTab = 3;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/fb.png',
                            height: 23,
                            color: _currentTab == 3
                                ? primaryColor
                                : const Color(0xffb2b2b2)),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Trend', style: TextStyle(fontSize: 12))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
