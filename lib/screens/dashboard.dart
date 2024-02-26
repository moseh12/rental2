// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/components/location_icon.dart';
import 'package:rental/components/notification_icon.dart';
import 'package:rental/screens/chat.dart';
import 'package:rental/screens/home.dart';
import 'package:rental/screens/profile.dart';
import 'package:rental/screens/search_properties.dart';
import 'package:rental/screens/wishlist.dart';
import 'package:rental/utils/colorscheme.dart';
import 'package:rental/widgets/drawer.dart';

class DashBoard extends StatefulWidget {
  final int page;

  const DashBoard({super.key, this.page = 0});

  @override
  // ignore: library_private_types_in_public_api
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final PageStorageBucket bucket = PageStorageBucket();
  int _currentTab = 0;
  Widget currentScreen = const Home();
  String? title;

  @override
  void initState() {
    _currentTab = widget.page;
    if (_currentTab == 1) currentScreen = const SearchProperties();
    if (_currentTab == 2) currentScreen = const Wishlist();
    if (_currentTab == 4) currentScreen = const Profile();
    title = 'Hello, John Smith';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        appBar: customAppBar(),
        drawer: const CustomDrawer(),
        bottomNavigationBar: customBottomNavigationBar(),
        body: Column(
          children: [
            Expanded(
              child: PageStorage(
                bucket: bucket,
                child: currentScreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*........................................Bottom Navigation bar.......................*/
  BottomAppBar customBottomNavigationBar() {
    return BottomAppBar(
      child: Container(
        height: 55,
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = const Home();
                  _currentTab = 0;
                  title = 'Hello, John Smith';
                });
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/home.svg',
                      color: _currentTab == 0 ? primaryColor : Colors.grey)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = const SearchProperties();
                  _currentTab = 1;
                  title = 'Projects';
                });
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/building.svg',
                      color: _currentTab == 1 ? primaryColor : Colors.grey)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = const Wishlist();
                  _currentTab = 2;
                  title = 'Wishlist';
                });
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/heart.svg',
                      color: _currentTab == 2 ? primaryColor : Colors.grey)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = const Chat();
                  _currentTab = 3;
                  title = 'Chat';
                });
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/chat.svg',
                      color: _currentTab == 3 ? primaryColor : Colors.grey)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = const Profile();
                  _currentTab = 4;
                  title = 'Profile';
                });
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  child: SvgPicture.asset('assets/icons/profile.svg',
                      color: _currentTab == 4 ? primaryColor : Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }

  /*........................................Custom AppBar.....................*/
  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title!,
        style: const TextStyle(color: Colors.black),
      ),
      leading: GestureDetector(
        onTap: () => _drawerKey.currentState!.openDrawer(),
        child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: const Color(0xff979696),
                height: 20,
              ),
            )),
      ),
      actions: [
        locationIcon(context),
        notificationIcon(context),
      ],
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}
