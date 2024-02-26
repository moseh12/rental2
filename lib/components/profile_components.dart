import 'package:flutter/material.dart';
import 'package:rental/components/home_componets.dart';
import 'package:rental/utils/colorscheme.dart';
import 'package:rental/utils/constants.dart';

List<String> prices = [
  '\$567,900',
  '\$335,900',
  '\$289,700',
  '\$470,000',
  '\$224,670',
  '\$490,270',
  '\$300,600',
  '\$651,230',
  '\$980,000',
  '\$300,000',
];
List<String> addresses = [
  '16523 Choke Cherry Dr,Victorville,CA 8728',
  'Station,Hampton,GA 23423',
  '129 Hoper Ln,Folsom,CA 95300',
  '13598 Lagrone St,Powder Springs,GA 30127',
  '4625 Careyback Ave,Elk Grove,CA 7689',
  '4592 Eldywood Ln Batavia,OH 45103',
  '4028 Timber Creek Dr, Cincinnati,OH45623',
  '11456 57th St E Parrish,Fl 341219',
  '67 Marvin Park,Powder Springs,GA 30178',
  '24019 Doverwick Dr Tomball,Tx'
];
List<String> houseImg = [
  'assets/images/house.jpg',
  'assets/images/house1.jpg',
  'assets/images/house2.jpg',
  'assets/images/house3.jpg',
  'assets/images/house4.jpg',
  'assets/images/house5.jpg',
  'assets/images/house6.jpg',
  'assets/images/house7.jpg',
  'assets/images/house8.jpg',
  'assets/images/house9.jpg'
];

firstHalf(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.45,
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.only(bottom: 10.0),
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          maxRadius: 60,
          backgroundImage: AssetImage('assets/images/john.jpg'),
        ),
        const Text(
          'CLEMENT KYALE',
          style: kh1,
        ),
        const Text(
          'KITUI ,KENYA',
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'ContactUs');
          },
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: primaryColor),
            child: const Center(
              child: Text(
                'Message',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Divider(),
        ),
        Container(
          height: 40,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Followers');
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '500',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Properties');
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '60',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Properties',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'Following'),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '60',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followings',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Divider(),
        ),
      ],
    ),
  );
}

anotherList() {
  return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return index == 0
            ? firstHalf(context)
            : GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'HouseDetails');
                },
                child: thirdComponent(index));
      });
}
