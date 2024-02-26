
import 'package:flutter/material.dart';
import 'package:rental/components/search_properties_components.dart';



class SearchProperties extends StatefulWidget {
  const SearchProperties({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPropertiesState createState() => _SearchPropertiesState();
}

class _SearchPropertiesState extends State<SearchProperties> {
  dynamic selection;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 12.0),
            child: listOfProperties()),
      ),
    );
  }
}
