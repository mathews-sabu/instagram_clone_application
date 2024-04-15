// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/view/create_post_screen/create_post_screen.dart';
import 'package:instagram_clone_application/view/home_screen/home_screen.dart';
import 'package:instagram_clone_application/view/notification_screen/notification_screen.dart';
import 'package:instagram_clone_application/view/profile_screen/profile_screen.dart';
import 'package:instagram_clone_application/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    SearchScreen(),
    CreatePostScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;

            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 15,
                ),
                label: "")
          ]),
    );
  }
}
