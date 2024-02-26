// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/screens/dashboard.dart';
import 'package:rental/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);
  final String title;
  const CustomAppBar(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 56),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 3, blurRadius: 2)
        ]),
        height: 56,
        child: Row(
          children: [
            GestureDetector(
                child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        color: const Color(0xff979696),
                        height: 20,
                      ),
                    )),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                  print('Appbar opening');
                }),
            GestureDetector(
              onTap: () {
                print('pressing');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashBoard(page: 4)));
              },
              child: Text(
                title,
                style: kh1,
              ),
            ),
            const Spacer(),
            GestureDetector(
                child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'assets/icons/location.svg',
                        color: const Color(0xff979696),
                        height: 20,
                      ),
                    )),
                onTap: () {
                  Navigator.pushNamed(context, 'Location');
                  print('Appbar opening');
                }),
            GestureDetector(
                child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'assets/icons/bell.svg',
                        color: const Color(0xff979696),
                        height: 20,
                      ),
                    )),
                onTap: () {
                  Navigator.pushNamed(context, 'Notifications');
                }),
          ],
        ),
      ),
    );
  }
}
