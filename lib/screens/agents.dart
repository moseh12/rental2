import 'package:flutter/material.dart';
import 'package:rental/components/agents_components.dart';



class Agents extends StatefulWidget {
  const Agents({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgentsState createState() => _AgentsState();
}

class _AgentsState extends State<Agents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'AGENTS',
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

        ),
        body: agentsList(),
      ),
    );
  }
}
