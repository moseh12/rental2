import 'package:flutter/material.dart';
import 'package:rental/components/carousal.dart';
import 'package:rental/components/home_componets.dart';
import 'package:rental/components/textfield_with_filter.dart';
import 'package:rental/utils/colorscheme.dart';
import 'package:rental/utils/constants.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFieldWithFilter(context: context),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Latest Projects',
                    style: kh3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'SeeAllScreen');
                    },
                    child: const Text(
                      'SEE ALL',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  )
                ],
              ),
            ),

            listForSecondComponent(),

            /*.............Carousal..........................*/

            appCarousal(context),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 30.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Properties Near You',
                    style: kh3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'SeeAllScreen');
                    },
                    child: const Text(
                      'SEE ALL',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: listForThirdComponent(),
            )
          ],
        ),
      ),
    );
  }
}
