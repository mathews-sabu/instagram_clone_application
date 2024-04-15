// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/core/constants/image_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //1. INSTAGRAM LOGO
                Image.asset(ImageConstants.instagramTextLogoPng),
                SizedBox(
                  height: 25,
                ),
                //2.USERNAME
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      fillColor: ColorConstants.lightGrey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.primaryBlack
                                  .withOpacity(.4)))),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                //3.PASSWORD
                TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                      fillColor: ColorConstants.lightGrey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.primaryBlack
                                  .withOpacity(.4)))),
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: ColorConstants.primaryBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),

                //4.LOGIN BUTTON
                CustomButton(
                  text: "login",
                  buttonColor: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstants.primaryBlue
                      : ColorConstants.primaryBlue.withOpacity(.4),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                        (route) => false);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: ColorConstants.primaryBlue,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Login with facebook",
                          style: TextStyle(
                              color: ColorConstants.primaryBlue, fontSize: 14),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      endIndent: 30,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      indent: 30,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(
                        text: "Dont have an account? ",
                        style: TextStyle(color: Colors.black.withOpacity(.4)),
                        children: [
                      TextSpan(
                          text: "Sign up",
                          style: TextStyle(color: ColorConstants.primaryBlue))
                    ])),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
          child: Text(
            "Instagram or Facebook",
            textAlign: TextAlign.center,
            style:
                TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4)),
          ),
        ));
  }
}
