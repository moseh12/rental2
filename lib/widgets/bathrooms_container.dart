import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';

class BathroomContainer extends StatefulWidget {
  const BathroomContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BathroomContainerState createState() => _BathroomContainerState();
}

class _BathroomContainerState extends State<BathroomContainer> {
  List<bool> bathRoomsSelected = [
    true,
    false,
    false,
    false,
    false,
  ];

  // List<bool> bathRoomsSelected = [true, true, true, true, true];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      //padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'BATHROOMS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[0] = !  bathRoomsSelected[0];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[0]
                          ? primaryColor
                          : const Color(0xfffafafa),
                      borderRadius:
                          const BorderRadius.horizontal(left: Radius.circular(30.0))),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: bathRoomsSelected[0]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[1] = !  bathRoomsSelected[1];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color:
                      bathRoomsSelected[1] ? primaryColor : const Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: bathRoomsSelected[1]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[2] = !  bathRoomsSelected[2];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color:
                      bathRoomsSelected[2] ? primaryColor : const Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: bathRoomsSelected[2]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[3] = !  bathRoomsSelected[3];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color:
                      bathRoomsSelected[3] ? primaryColor : const Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: bathRoomsSelected[3]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[4] = !  bathRoomsSelected[4];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[4]
                          ? primaryColor
                          : const Color(0xfffafafa),
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(30.0))),
                  child: Center(
                    child: Text(
                      '4+',
                      style: TextStyle(
                          color: bathRoomsSelected[4]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
