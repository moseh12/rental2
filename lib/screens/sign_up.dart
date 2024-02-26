// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:rental/components/reusable_textfield.dart';
// import 'package:rental/components/social_media_button.dart';
// import 'package:rental/utils/colorscheme.dart';
// import 'package:rental/widgets/custom_button.dart';

// import '../controllers/sign-up-controller.dart';
// import '../utils/app-constant.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final SignUpController signUpController = Get.put(SignUpController());
//   TextEditingController username = TextEditingController();
//   TextEditingController userEmail = TextEditingController();
//   TextEditingController userPhone = TextEditingController();
//   TextEditingController userCity = TextEditingController();
//   TextEditingController userPassword = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Color(0xfff3f3f4),
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//             child: Container(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /* ....................................Log Back into your Account.....................*/
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               const Text(
//                 'SIGN UP',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Text('Sign Up Now and Get The Best Deal'),
//               Container(
//                 height: 5,
//                 width: 70,
//                 margin: const EdgeInsets.only(top: 10.0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: primaryColor),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.05,
//               ),
//               const Text(
//                 'Username',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 width: MediaQuery.sizeOf(context).width * 0.9,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: TextFormField(
//                     controller: username,
//                     cursorColor: AppConstant.appScendoryColor,
//                     keyboardType: TextInputType.name,
//                     decoration: InputDecoration(
//                       hintText: "UserName",
//                       prefixIcon: Icon(Icons.person),
//                       contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               //  reusableTextField(
//               //    hint: 'Enter your Username', controller: username.text),
//               const SizedBox(
//                 height: 10,
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Text(
//                 'Email',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 width: MediaQuery.sizeOf(context).width * 0.9,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: TextFormField(
//                     controller: userEmail,
//                     cursorColor: AppConstant.appScendoryColor,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       hintText: "Email",
//                       prefixIcon: Icon(Icons.email),
//                       contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // reusableTextField(
//               //    hint: 'Enter Email Address', controller: userEmail.text),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 'Password',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 width: MediaQuery.sizeOf(context).width * 0.9,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Obx(
//                     () => TextFormField(
//                       controller: userPassword,
//                       obscureText: signUpController.isPasswordVisible.value,
//                       cursorColor: AppConstant.appScendoryColor,
//                       keyboardType: TextInputType.visiblePassword,
//                       decoration: InputDecoration(
//                         hintText: "Password",
//                         prefixIcon: Icon(Icons.password),
//                         suffixIcon: GestureDetector(
//                           onTap: () {
//                             signUpController.isPasswordVisible.toggle();
//                           },
//                           child: signUpController.isPasswordVisible.value
//                               ? Icon(Icons.visibility_off)
//                               : Icon(Icons.visibility),
//                         ),
//                         contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // reusableTextField(
//               //   hint: 'Enter Password', controller: userPassword.text),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.03,
//               ),
//               /* ..........................Sign In Now Button....................*/
//               Container(
//                 width: 400,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: AppConstant.appScendoryColor,
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: TextButton(
//                   child: Text(
//                     "SIGN UP",
//                     style: TextStyle(color: AppConstant.appTextColor),
//                   ),
//                   onPressed: () async {
//                     String name = username.text.trim();
//                     String email = userEmail.text.trim();
//                     String password = userPassword.text.trim();
//                     String userDeviceToken = '';

//                     if (name.isEmpty || email.isEmpty || password.isEmpty) {
//                       Get.snackbar(
//                         "Error",
//                         "Please enter all details",
//                         snackPosition: SnackPosition.BOTTOM,
//                         backgroundColor: AppConstant.appScendoryColor,
//                         colorText: AppConstant.appTextColor,
//                       );
//                     } else {
//                       UserCredential? userCredential =
//                           await signUpController.signUpMethod(
//                         name,
//                         email,
//                         password,
//                       );

//                       if (userCredential != null) {
//                         Get.snackbar(
//                           "Verification email sent.",
//                           "Please check your email.",
//                           snackPosition: SnackPosition.BOTTOM,
//                           backgroundColor: AppConstant.appScendoryColor,
//                           colorText: AppConstant.appTextColor,
//                         );

//                         FirebaseAuth.instance.signOut();
//                         Navigator.pushNamed(context, 'SignIn');
//                         //Get.offAll(() => SignInScreen());
//                       }
//                     }
//                   },
//                 ),
//               ),
//               // CustomButton(
//               //   callback: () async {
//               //     print('hhh');
//               //     String name = username.text.trim();
//               //     String email = userEmail.text.trim();
//               //     //  String phone = userPhone.text.trim();
//               //     // String city = userCity.text.trim();
//               //     String password = userPassword.text.trim();
//               //     //  String userDeviceToken = '';

//               //     if (name.isEmpty ||
//               //         email.isEmpty ||
//               //         //   phone.isEmpty ||
//               //         //    city.isEmpty ||
//               //         password.isEmpty) {
//               //       Get.snackbar(
//               //         "Error",
//               //         "Please enter all details",
//               //         snackPosition: SnackPosition.BOTTOM,
//               //         backgroundColor: AppConstant.appScendoryColor,
//               //         colorText: AppConstant.appTextColor,
//               //       );
//               //     } else {
//               //       UserCredential? userCredential =
//               //            await signUpController.signUpMethod(
//               //         name,
//               //         email,
//               //         //  phone,
//               //         //city,
//               //         password,
//               //         //userDeviceToken,
//               //       );

//               //       if (userCredential != null) {
//               //         Get.snackbar(
//               //           "Verification email sent.",
//               //           "Please check your email.",
//               //           snackPosition: SnackPosition.BOTTOM,
//               //           backgroundColor: AppConstant.appScendoryColor,
//               //           colorText: AppConstant.appTextColor,
//               //         );

//               //         FirebaseAuth.instance.signOut();
//               //         //Get.offAll(() => SignInScreen());
//               //         Navigator.pushNamed(context, 'SignIn');
//               //       }
//               //     }
//               //    // Navigator.pushNamed(context, 'Dashboard');
//               //   },
//               //   title: 'Sign Up Now',
//               // ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.03,
//               ),
//               const Center(
//                 child: Text(
//                   'or Continue With',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               /* ..........................Row of Two Containers.........................*/

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   socialMediaButton(
//                       img: 'assets/icons/google.png',
//                       callback: () {},
//                       text: 'Google',
//                       color: Colors.grey.shade200),
//                   socialMediaButton(
//                       img: 'assets/icons/fb.png',
//                       callback: () {},
//                       text: 'Facebook',
//                       color: Colors.grey.shade200),
//                 ],
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.05),

//               /* ........................Row of Don't have an account text..................*/
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Already have an Account? ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   GestureDetector(
//                       onTap: () {
//                         Navigator.pushNamed(context, 'SignIn');
//                       },
//                       child: const Text(
//                         'Sign In',
//                         style: TextStyle(
//                             color: primaryColor,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }

// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_local_variable

// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// // import 'package:get/get.dart';

// // import '../../controllers/sign-up-controller.dart';
// // import '../utils/app-constant.dart';

// // class SignUpScreen extends StatefulWidget {
// //   const SignUpScreen({super.key});

// //   @override
// //   State<SignUpScreen> createState() => _SignUpScreenState();
// // }

// // class _SignUpScreenState extends State<SignUpScreen> {
// //   final SignUpController signUpController = Get.put(SignUpController());
// //   TextEditingController username = TextEditingController();
// //   TextEditingController userEmail = TextEditingController();
// //   TextEditingController userPhone = TextEditingController();
// //   TextEditingController userCity = TextEditingController();
// //   TextEditingController userPassword = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
// //       return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: AppConstant.appScendoryColor,
// //           centerTitle: true,
// //           title: Text(
// //             "Sign Up",
// //             style: TextStyle(color: AppConstant.appTextColor),
// //           ),
// //         ),
// //         body: SingleChildScrollView(
// //           physics: BouncingScrollPhysics(),
// //           child: Container(
// //             child: Column(
// //               children: [
// //                 SizedBox(
// //                   height: Get.height / 20,
// //                 ),
// //                 Container(
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     "Welcome to my app",
// //                     style: TextStyle(
// //                         color: AppConstant.appScendoryColor,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 16.0),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: Get.height / 20,
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                   width: Get.width,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(10.0),
// //                     child: TextFormField(
// //                       controller: userEmail,
// //                       cursorColor: AppConstant.appScendoryColor,
// //                       keyboardType: TextInputType.emailAddress,
// //                       decoration: InputDecoration(
// //                         hintText: "Email",
// //                         prefixIcon: Icon(Icons.email),
// //                         contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                   width: Get.width,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(10.0),
// //                     child: TextFormField(
// //                       controller: username,
// //                       cursorColor: AppConstant.appScendoryColor,
// //                       keyboardType: TextInputType.name,
// //                       decoration: InputDecoration(
// //                         hintText: "UserName",
// //                         prefixIcon: Icon(Icons.person),
// //                         contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                   width: Get.width,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(10.0),
// //                     child: TextFormField(
// //                       controller: userPhone,
// //                       cursorColor: AppConstant.appScendoryColor,
// //                       keyboardType: TextInputType.number,
// //                       decoration: InputDecoration(
// //                         hintText: "Phone",
// //                         prefixIcon: Icon(Icons.phone),
// //                         contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                   width: Get.width,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(10.0),
// //                     child: TextFormField(
// //                       controller: userCity,
// //                       cursorColor: AppConstant.appScendoryColor,
// //                       keyboardType: TextInputType.streetAddress,
// //                       decoration: InputDecoration(
// //                         hintText: "City",
// //                         prefixIcon: Icon(Icons.location_pin),
// //                         contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                   width: Get.width,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(10.0),
// //                     child: Obx(
// //                       () => TextFormField(
// //                         controller: userPassword,
// //                         obscureText: signUpController.isPasswordVisible.value,
// //                         cursorColor: AppConstant.appScendoryColor,
// //                         keyboardType: TextInputType.visiblePassword,
// //                         decoration: InputDecoration(
// //                           hintText: "Password",
// //                           prefixIcon: Icon(Icons.password),
// //                           suffixIcon: GestureDetector(
// //                             onTap: () {
// //                               signUpController.isPasswordVisible.toggle();
// //                             },
// //                             child: signUpController.isPasswordVisible.value
// //                                 ? Icon(Icons.visibility_off)
// //                                 : Icon(Icons.visibility),
// //                           ),
// //                           contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(10.0),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: Get.height / 20,
// //                 ),
// //                 Material(
// //                   child: Container(
// //                     width: Get.width / 2,
// //                     height: Get.height / 18,
// //                     decoration: BoxDecoration(
// //                       color: AppConstant.appScendoryColor,
// //                       borderRadius: BorderRadius.circular(20.0),
// //                     ),
// //                     child: TextButton(
// //                       child: Text(
// //                         "SIGN UP",
// //                         style: TextStyle(color: AppConstant.appTextColor),
// //                       ),
// //                       onPressed: () async {
// //                         String name = username.text.trim();
// //                         String email = userEmail.text.trim();
// //                         String phone = userPhone.text.trim();
// //                         String city = userCity.text.trim();
// //                         String password = userPassword.text.trim();
// //                         String userDeviceToken = '';

// //                         if (name.isEmpty ||
// //                             email.isEmpty ||
// //                             phone.isEmpty ||
// //                             city.isEmpty ||
// //                             password.isEmpty) {
// //                           Get.snackbar(
// //                             "Error",
// //                             "Please enter all details",
// //                             snackPosition: SnackPosition.BOTTOM,
// //                             backgroundColor: AppConstant.appScendoryColor,
// //                             colorText: AppConstant.appTextColor,
// //                           );
// //                         } else {
// //                           UserCredential? userCredential =
// //                               await signUpController.signUpMethod(
// //                             name,
// //                             email,
// //                             phone,
// //                             city,
// //                             password,
// //                             userDeviceToken,
// //                           );

// //                           if (userCredential != null) {
// //                             Get.snackbar(
// //                               "Verification email sent.",
// //                               "Please check your email.",
// //                               snackPosition: SnackPosition.BOTTOM,
// //                               backgroundColor: AppConstant.appScendoryColor,
// //                               colorText: AppConstant.appTextColor,
// //                             );

// //                             FirebaseAuth.instance.signOut();
// //                             Navigator.pushNamed(context, 'SignIn');
// //                             // Get.offAll(() => SignInScreen());
// //                           }
// //                         }
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: Get.height / 20,
// //                 ),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Text(
// //                       "Already have an account? ",
// //                       style: TextStyle(color: AppConstant.appScendoryColor),
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         Navigator.pushNamed(context, 'SignIn');
// //                         //Get.offAll(() => SignInScreen()),
// //                       },
// //                       child: Text(
// //                         "Sign In",
// //                         style: TextStyle(
// //                             color: AppConstant.appScendoryColor,
// //                             fontWeight: FontWeight.bold),
// //                       ),
// //                     ),
// //                   ],
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       );
// //     });
// //   }
// // }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import '../../controllers/sign-up-controller.dart';
import '../utils/app-constant.dart';
import '../utils/colorscheme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController signUpController = Get.put(SignUpController());
  TextEditingController username = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPhone = TextEditingController();
  TextEditingController userCity = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const Text(
                    'SIGN UP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Sign Up Now and Get The Best Deal'),
                  Container(
                    height: 5,
                    width: 70,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: username,
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Enter your Username",
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Obx(
                        () => TextFormField(
                          controller: userPassword,
                          obscureText: signUpController.isPasswordVisible.value,
                          cursorColor: AppConstant.appScendoryColor,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                signUpController.isPasswordVisible.toggle();
                              },
                              child: signUpController.isPasswordVisible.value
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                            contentPadding:
                                EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  Material(
                    child: Center(
                      child: Container(
                        width: Get.width / 1.1,
                        height: Get.height / 18,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextButton(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(color: AppConstant.appTextColor),
                          ),
                          onPressed: () async {
                            String name = username.text.trim();
                            String email = userEmail.text.trim();
                            String phone = userPhone.text.trim();
                            String city = userCity.text.trim();
                            String password = userPassword.text.trim();
                            String userDeviceToken = '';

                            if (name.isEmpty ||
                                email.isEmpty ||
                                //   phone.isEmpty ||
                                //  city.isEmpty ||
                                password.isEmpty) {
                              Get.snackbar(
                                "Error",
                                "Please enter all details",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: AppConstant.appScendoryColor,
                                colorText: AppConstant.appTextColor,
                              );
                            } else {
                              UserCredential? userCredential =
                                  await signUpController.signUpMethod(
                                name,
                                email,
                                phone,
                                city,
                                password,
                                userDeviceToken,
                              );

                              if (userCredential != null) {
                                Get.snackbar(
                                  "Verification email sent.",
                                  "Please check your email.",
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: AppConstant.appScendoryColor,
                                  colorText: AppConstant.appTextColor,
                                );

                                FirebaseAuth.instance.signOut();
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(context, 'SignIn');
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: primaryColor),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'SignIn'),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
