import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';

class BedroomsContainer extends StatefulWidget {
  const BedroomsContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BedroomsContainerState createState() => _BedroomsContainerState();
}

class _BedroomsContainerState extends State<BedroomsContainer> {
  List<bool> bedRooms = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> bedRoomsSelected = [true, true, true, true, true];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'BEDROOMS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      //for()
                      bedRoomsSelected[0] = !bedRoomsSelected[0];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                        color: bedRoomsSelected[0] == bedRooms[0]
                            ? primaryColor
                            : const Color(0xfffafafa),
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(30.0))),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: bedRoomsSelected[0] == bedRooms[0]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[1] = !bedRoomsSelected[1];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[1] == bedRooms[1]
                        ? primaryColor
                        : const Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: bedRoomsSelected[1] == bedRooms[1]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[2] = !bedRoomsSelected[2];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[2] == bedRooms[2]
                        ? primaryColor
                        : const Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: bedRoomsSelected[2] == bedRooms[2]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[3] = !bedRoomsSelected[3];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[3] == bedRooms[3]
                        ? primaryColor
                        : const Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                            color: bedRoomsSelected[3] == bedRooms[3]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[4] = !bedRoomsSelected[4];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                        color: bedRoomsSelected[4] == bedRooms[4]
                            ? primaryColor
                            : const Color(0xfffafafa),
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(30.0))),
                    child: Center(
                      child: Text(
                        '4+',
                        style: TextStyle(
                            color: bedRoomsSelected[4] == bedRooms[4]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
