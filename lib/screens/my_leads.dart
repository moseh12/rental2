// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/components/myleads_components.dart';



class MyLeads extends StatelessWidget {
  const MyLeads({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'My Leads',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          GestureDetector(
              child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SvgPicture.asset(
                      'assets/icons/location.svg',
                      color: Colors.black,
                      height: 20,
                    ),
                  )),
              onTap: () {
                Scaffold.of(context).openDrawer();
                // ignore: avoid_print
                print('Appbar opening');
              }),
          GestureDetector(
              child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SvgPicture.asset(
                      'assets/icons/bell.svg',
                      
                      color: Colors.black,
                      height: 20,
                    ),
                  )),
              onTap: () {
                Scaffold.of(context).openDrawer();
                // ignore: avoid_print
                print('Appbar opening');
              }),
        ],
      ),
      body: myLeadsAgentsList(),
    ));
  }
}
