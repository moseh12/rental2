// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/utils/colorscheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/dashboard.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('dashboard');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashBoard(
                                      page: 4,
                                    )));
                      },
                      child: Container(
                        height: 75,
                        margin: const EdgeInsets.only(left: 12, right: 6.0),
                        width: 75,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/john.jpg'))),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'John Smith',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    const Text(
                      'Orlando Real Estate',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )
                  ],
                ),
              ),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Home',
                  svgIconLoc: 'assets/icons/home_drawer.svg',
                  routeName: 'Dashboard'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Add property',
                  svgIconLoc: 'assets/icons/add_property.svg',
                  routeName: 'AddProperty'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Search Properties',
                  svgIconLoc: 'assets/icons/search_property.svg',
                  routeName: 'SearchProperty'),
              const Divider(
                color: dividerColor,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashBoard(
                              page: 1,
                            )),
                  );
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/new_project.svg',
                        color: dividerTextColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'New Projects',
                        style: TextStyle(color: dividerTextColor),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DashBoard(page: 2)),
                  );
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/favourite.svg',
                        color: dividerTextColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Favourites',
                        style: TextStyle(color: dividerTextColor),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Saved Searches',
                  svgIconLoc: 'assets/icons/saved_searches.svg',
                  routeName: 'SavedSearches'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Agents',
                  svgIconLoc: 'assets/icons/agents.svg',
                  routeName: 'Agents'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'News and Blog',
                  svgIconLoc: 'assets/icons/news_and_blog.svg',
                  routeName: 'NewsAndBlog'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'About Us',
                  svgIconLoc: 'assets/icons/about_us.svg',
                  routeName: 'AboutUs'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Contact Us',
                  svgIconLoc: 'assets/icons/contact_us.svg',
                  routeName: 'ContactUs'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Terms and Policies',
                  svgIconLoc: 'assets/icons/terms_and_privacy.svg',
                  routeName: 'TermsAndConditions'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Settings',
                  svgIconLoc: 'assets/icons/setting.svg',
                  routeName: 'Settings'),
              const Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Log Out',
                  svgIconLoc: 'assets/icons/logout.svg',
                  routeName: 'SignIn'),
              const Divider(
                color: dividerColor,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  drawerTile({String? title, String? svgIconLoc, String? routeName}) {
    return GestureDetector(
      onTap: () async {
        if (routeName == "SignIn") {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.clear();
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context, routeName!);
        } else {
          Navigator.pushNamed(context, routeName!);
        }
      },
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              svgIconLoc!,
              color: dividerTextColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title!,
              style: const TextStyle(color: dividerTextColor),
            )
          ],
        ),
      ),
    );
  }
}
