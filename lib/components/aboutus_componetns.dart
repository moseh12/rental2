import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

bannerForAboutUS(BuildContext context) {
  return Container(
      height: 230,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/house.jpg'))),
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
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
                              color: Colors.transparent),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: SvgPicture.asset(
                              'assets/icons/bell.svg',
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              height: 20,
                            ),
                          )),
                      onTap: () {
                      Navigator.pushNamed(context, 'Notifications');
                      }),
                ],
              ),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      alignment: Alignment.center,
                      child: const Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ));
}

listViewAboutUs() {
  List offices = [
    'assets/images/office1.png',
    'assets/images/office2.png',
    'assets/images/office3.png',
    'assets/images/office4.png',
    'assets/images/office1.jpg',
  ];

  return ListView.builder(
      itemCount: offices.length+1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return index == 0
            ? const SizedBox(
                width: 10,
              )
            : Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                width: 130,
                margin: const EdgeInsets.only(right: 4.4),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(offices[index-1])),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              );
      });
}
