import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';

class HeartContainer extends StatefulWidget {
  final int index;
  const HeartContainer(this.index, {super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HeartContainerState createState() => _HeartContainerState();
}

class _HeartContainerState extends State<HeartContainer> {
  List <bool> selected=[false,false,false,false,false,false,false,false,false,false,];
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        setState(() {
          selected[widget.index]=!selected[widget.index];
        });
      },
      child: Container(
        child: selected[widget.index]?const Icon(
          Icons.favorite,color: primaryColor,
          size: 22,
        ):const Icon(
          Icons.favorite_border,
          size: 22,
        ),
      ),
    );
  }
}
