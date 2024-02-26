
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/utils/colorscheme.dart';



import '../components/inner_chat_components.dart';

class InnerChat extends StatefulWidget {
  const InnerChat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InnerChatState createState() => _InnerChatState();
}

class _InnerChatState extends State<InnerChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          appBar: appBarForChatScreen(context),
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      userChatBubble('I just started a new book'),
                      const SizedBox(
                        height: 10,
                      ),

                      otherUserChatBubble('Im Good, What\'s up'),
                      const SizedBox(
                        height: 10,
                      ),
                      userChatBubble('How are you?'),
                      const SizedBox(
                        height: 10,
                      ),
                      userChatBubble('Hi There'),

                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xfff1f1f1),
                        border: Border.all(color: Colors.grey)),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: SvgPicture.asset(
                                'assets/icons/smile.svg',
                                height: 18,
                                // ignore: deprecated_member_use
                                color: Colors.white,
                              )),
                        ),
                        const Expanded(
                            child: TextField(
                              cursorColor: primaryColor,
                              decoration: InputDecoration(
                                  hintText: 'Typing Comment...',
                                  focusColor: Colors.red,
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 12)),
                            )),
                        Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/send.svg',
                            // ignore: deprecated_member_use
                            color: Colors.white,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
