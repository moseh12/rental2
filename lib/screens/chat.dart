import 'package:flutter/material.dart';
import 'package:rental/components/chat_components.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: chatList(),
      ),
    );
  }

  ListView chatList() {
    return ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return index==0?const SizedBox(height: 15,):verticalChatList(context,index);
        });
  }
}
