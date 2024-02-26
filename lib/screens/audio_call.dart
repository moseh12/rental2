import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';



class AudioCall extends StatelessWidget {
  const AudioCall({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  'assets/images/audio.jpg'),
            ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: primaryColor.withOpacity(0.8),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const Text(
                  'Ringing...',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage('assets/images/person1.jpg'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'John  Doe',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '(Takaful Real Estate)',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  color: Colors.transparent,
                  child: Row(
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
                              Icons.volume_up,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Speaker',
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
