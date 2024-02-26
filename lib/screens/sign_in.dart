// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:rental/components/reusable_textfield.dart';
// import 'package:rental/components/social_media_button.dart';
// import 'package:rental/screens/dashboard.dart';
// import 'package:rental/utils/colorscheme.dart';

// import 'package:rental/widgets/custom_button.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../controllers/get-user-data-controller.dart';
// import '../controllers/sign-in-controller.dart';
// import '../utils/app-constant.dart';

// class SignIn extends StatelessWidget {
//   SignIn({super.key});
//   final SignInController signInController = Get.put(SignInController());
//   final GetUserDataController getUserDataController =
//       Get.put(GetUserDataController());
//   TextEditingController userEmail = TextEditingController();
//   TextEditingController userPassword = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Color(0xfff3f3f4),
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));

//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: Container(),
//           systemOverlayStyle: SystemUiOverlayStyle.dark,
//         ),
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//             child: Container(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
// /*....................................Log Back into your Account.....................*/
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.03,
//               ),
//               const Text(
//                 'SIGN IN',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Text('Log Back Into Your Account'),
//               Container(
//                 height: 5,
//                 width: 70,
//                 margin: const EdgeInsets.only(top: 10.0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: primaryColor),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.07,
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
//               //reusableTextField(hint: 'Enter Email Address'),
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
//                 width: MediaQuery.sizeOf(context).width * 0.95,
//                 child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Obx(
//                       () => TextFormField(
//                         controller: userPassword,
//                         obscureText: signInController.isPasswordVisible.value,
//                         cursorColor: AppConstant.appScendoryColor,
//                         keyboardType: TextInputType.visiblePassword,
//                         decoration: InputDecoration(
//                           hintText: "Password",
//                           prefixIcon: Icon(Icons.password),
//                           suffixIcon: GestureDetector(
//                             onTap: () {
//                               signInController.isPasswordVisible.toggle();
//                             },
//                             child: signInController.isPasswordVisible.value
//                                 ? Icon(Icons.visibility_off)
//                                 : Icon(Icons.visibility),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                     )),
//               ),
//               //reusableTextField(hint: 'Enter Password'),
//               const SizedBox(
//                 height: 25,
//               ),
//               Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, 'ForgotPassword');
//                   },
//                   child: const Text(
//                     'Forgot Password?',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.04,
//               ),
//               /* ..........................Sign In Now Button....................*/

//               Container(
//                 width: 400,
//                 height: 55,
//                 decoration: BoxDecoration(
//                   color: AppConstant.appScendoryColor,
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: TextButton(
//                   child: Text(
//                     "SIGN IN",
//                     style: TextStyle(color: AppConstant.appTextColor),
//                   ),
//                   onPressed: () async {
//                     String email = userEmail.text.trim();
//                     String password = userPassword.text.trim();

//                     if (email.isEmpty || password.isEmpty) {
//                       Get.snackbar(
//                         "Error",
//                         "Please enter all details",
//                         snackPosition: SnackPosition.BOTTOM,
//                         backgroundColor: AppConstant.appScendoryColor,
//                         colorText: AppConstant.appTextColor,
//                       );
//                     } else {
//                       UserCredential? userCredential =
//                           await signInController.signInMethod(email, password);

//                       var userData = await getUserDataController
//                           .getUserData(userCredential!.user!.uid);

//                       if (userCredential != null) {
//                         if (userCredential.user!.emailVerified) {
//                           //
//                           Navigator.pushNamed(context, 'Dashboard');
//                           //Get.offAll(() => DashBoard());
//                           Get.snackbar(
//                             "Success User Login",
//                             "login Successfully!",
//                             snackPosition: SnackPosition.BOTTOM,
//                             backgroundColor: AppConstant.appScendoryColor,
//                             colorText: AppConstant.appTextColor,
//                           );
//                           // if (userData[0]['isAdmin'] == true) {
//                           //   Get.snackbar(
//                           //     "Success Admin Login",
//                           //     "login Successfully!",
//                           //     snackPosition: SnackPosition.BOTTOM,
//                           //     backgroundColor: AppConstant.appScendoryColor,
//                           //     colorText: AppConstant.appTextColor,
//                           //   );
//                           //   Get.offAll(() => AdminMainScreen());
//                         } else {
//                           Get.snackbar(
//                             "Error",
//                             "Please verify your email before login",
//                             snackPosition: SnackPosition.BOTTOM,
//                             backgroundColor: AppConstant.appScendoryColor,
//                             colorText: AppConstant.appTextColor,
//                           );
//                         }
//                       } else {
//                         Get.snackbar(
//                           "Error",
//                           "Please try again",
//                           snackPosition: SnackPosition.BOTTOM,
//                           backgroundColor: AppConstant.appScendoryColor,
//                           colorText: AppConstant.appTextColor,
//                         );
//                       }
//                     }
//                   },
//                 ),
//               ),
//               // CustomButton(
//               //   callback: () async {
//               //     Navigator.pushNamed(context, 'Dashboard');
//               //     SharedPreferences prefs =
//               //         await SharedPreferences.getInstance();
//               //     prefs.setBool("isLoggedIn", true);
//               //   },
//               //   title: 'Sign In Now',
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
//               /*  ..........................Row of Two Containers.........................*/
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

//               /*........................Row of Dont have an account text..................*/
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Don\'t have an Account? ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   GestureDetector(
//                       onTap: () {
//                         Navigator.pushNamed(context, 'SignUp');
//                       },
//                       child: const Text(
//                         'Sign Up',
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

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable, unnecessary_null_comparison, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:rental/utils/colorscheme.dart';

import '../../controllers/get-user-data-controller.dart';
import '../controllers/sign-in-controller.dart';
import '../utils/app-constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SignInController signInController = Get.put(SignInController());
  final GetUserDataController getUserDataController =
      Get.put(GetUserDataController());
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height / 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'SIGN IN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Log Back Into Your Account'),
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Obx(
                        () => TextFormField(
                          controller: userPassword,
                          obscureText: signInController.isPasswordVisible.value,
                          cursorColor: AppConstant.appScendoryColor,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                signInController.isPasswordVisible.toggle();
                              },
                              child: signInController.isPasswordVisible.value
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
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'ForgotPassword');
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: TextButton(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color: AppConstant.appTextColor),
                        ),
                        onPressed: () async {
                          String email = userEmail.text.trim();
                          String password = userPassword.text.trim();

                          if (email.isEmpty || password.isEmpty) {
                            Get.snackbar(
                              "Error",
                              "Please enter all details",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: AppConstant.appScendoryColor,
                              colorText: AppConstant.appTextColor,
                            );
                          } else {
                            UserCredential? userCredential =
                                await signInController.signInMethod(
                                    email, password);

                            var userData = await getUserDataController
                                .getUserData(userCredential!.user!.uid);

                            if (userCredential != null) {
                              if (userCredential.user!.emailVerified) {
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(context, 'Dashboard');
                                Get.snackbar(
                                  "Success User Login",
                                  "login Successfully!",
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: AppConstant.appScendoryColor,
                                  colorText: AppConstant.appTextColor,
                                );
                                //
                                // if (userData[0]['isAdmin'] == true) {
                                //   Get.snackbar(
                                //     "Success Admin Login",
                                //     "login Successfully!",
                                //     snackPosition: SnackPosition.BOTTOM,
                                //     backgroundColor: AppConstant.appScendoryColor,
                                //     colorText: AppConstant.appTextColor,
                                //   );
                                //   Get.offAll(() => AdminMainScreen());
                                // }
                              } else {
                                Get.snackbar(
                                  "Error",
                                  "Please verify your email before login",
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: AppConstant.appScendoryColor,
                                  colorText: AppConstant.appTextColor,
                                );
                              }
                            } else {
                              Get.snackbar(
                                "Error",
                                "Please try again",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: AppConstant.appScendoryColor,
                                colorText: AppConstant.appTextColor,
                              );
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
                      "Don't have an account? ",
                      style: TextStyle(color: primaryColor),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'SignUp'),
                      child: Text(
                        "Sign Up",
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
      );
    });
  }
}
