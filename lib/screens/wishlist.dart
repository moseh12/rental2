
import 'package:flutter/material.dart';
import 'package:rental/components/search_properties_components.dart';


class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 12.0),
            child: listOfProperties()
        ),
      ),
    );
  }


}
