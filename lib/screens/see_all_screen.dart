
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental/components/search_properties_components.dart';



class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'Properties',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(width: 10,)
          ], systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: listOfProperties(),
      ),
    );
  }
}
