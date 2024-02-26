import 'package:flutter/material.dart';


class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/aunty.jpg'))),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 18.0),
                    padding: const EdgeInsets.all(9.0),
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(fit: BoxFit.fill,
                      image: AssetImage(  'assets/images/person2.jpeg')
                    )),
                  ),

                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,

                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  color: Colors.transparent,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.mic_off,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mute',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.call_end,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Call End',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.switch_camera,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
