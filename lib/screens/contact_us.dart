import 'package:flutter/material.dart';
import 'package:rental/components/contact_us_components.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    bannerForContactUs(context),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.3-40,
                  child: tabViewForContactUs(context),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
