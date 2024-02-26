import 'package:flutter/material.dart';
import 'package:rental/components/profile_components.dart';




class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Column(
            children: [
              Expanded(
                child: anotherList(),
              ),
            ],
          )),
    );
  }
}
