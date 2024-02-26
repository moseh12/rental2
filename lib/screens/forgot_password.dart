// import 'package:flutter/material.dart';
// import 'package:rental/components/horizontal_line.dart';
// import 'package:rental/components/reusable_textfield.dart';
// import 'package:rental/utils/constants.dart';
// import 'package:rental/widgets/custom_button.dart';

// class ForgotPassword extends StatelessWidget {
//   const ForgotPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               const Text(
//                 'FORGOT PASSWORD',
//                 style: kh1,
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 'Please Enter Your Email Address or Phone Number to Reset Your Password',
//                 style: TextStyle(color: Colors.black87),
//               ),
//               horizontalLine(),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               const Text(
//                 'Email or Phone',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               reusableTextField(hint: 'Email,Address or Phone Number'),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.05,
//               ),
//              CustomButton(
//                title: 'Send Now',
//                callback: (){
//                  Navigator.pushNamed(context,'OtpScreen');
//                },
//              ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Center(child: Text('Cancel',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold ),))
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:rental/utils/colorscheme.dart';

import '../../controllers/forget-password-controller.dart';
import '../utils/app-constant.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final ForgerPasswordController forgerPasswordController =
      Get.put(ForgerPasswordController());
  TextEditingController userEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height / 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Forgat Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 5,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: userEmail,
                      cursorColor: AppConstant.appScendoryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 20,
                ),
                Center(
                  child: Container(
                    width: Get.width / 1.1,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      child: Text(
                        "Forget",
                        style: TextStyle(color: AppConstant.appTextColor),
                      ),
                      onPressed: () async {
                        String email = userEmail.text.trim();

                        if (email.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Please enter all details",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: AppConstant.appScendoryColor,
                            colorText: AppConstant.appTextColor,
                          );
                        } else {
                          String email = userEmail.text.trim();
                          forgerPasswordController.ForgetPasswordMethod(email);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
