import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/utils/colorscheme.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isSwitched1 = true;
  bool _isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,title: const Text('Settings',style: TextStyle(color: Colors.grey),),iconTheme: const IconThemeData(color: Colors.grey),
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
                          // ignore: deprecated_member_use
                          color: Colors.grey,
                          height: 20,
                        ),
                      )),
                  onTap: () {
                    Navigator.pushNamed(context, 'Location');
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
                          // ignore: deprecated_member_use
                          color: Colors.grey,
                          height: 20,
                        ),
                      )),
                  onTap: () {
                    Navigator.pushNamed(context, 'Notifications');
                  }),
            ],),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  _profileImg(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Name'),
                  const TextField(cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: 'John Smith',focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    )

                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text('Email'),
                  const TextField(cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: 'johnsmith@gmail.com',focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    )
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text('Address'),
                  const TextField(cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: '045, Gaylord Walks Apt,003',focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    )
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text('Phone number'),
                  const TextField(cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: '+92 312 4564322',focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    )
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Row(

                    children: [
                      const Text(
                        'FACEBOOK',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Spacer(),
                      Switch(
                          value: _isSwitched1,
                          onChanged: (val) {
                            setState(() {
                              _isSwitched1=val;
                              // ignore: avoid_print
                              print(val);
                            });
                          })
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Text(
                        'NOTIFICATIONS',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Spacer(),
                      Switch(
                          value: _isSwitched2,
                          onChanged: (val) {
                            setState(() {
                              _isSwitched2=val;
                              // ignore: avoid_print
                              print(val);
                            });
                          })
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ));
  }

  _profileImg() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          const CircleAvatar(
            maxRadius: 70,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/person9.jpg'),
          ),
          Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height * 0.15 / 2 + 35,
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.camera_alt,
                  color:primaryColor,
                ),
              ))
        ],
      ),
    );
  }


}
