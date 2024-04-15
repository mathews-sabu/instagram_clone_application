// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/notification_screen/tabs/following_tab.dart';
import 'package:instagram_clone_application/view/notification_screen/tabs/your_notifications.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: TabBar(
                    indicatorWeight: 2,
                    dividerHeight: 1,
                    indicatorColor: ColorConstants.primaryBlack,
                    labelColor: ColorConstants.primaryBlack,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor:
                        ColorConstants.primaryBlack.withOpacity(.4),
                    tabs: [
                      Tab(
                        text: "Following",
                      ),
                      Tab(
                        text: "You",
                      )
                    ])),
          ),
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            Container(
              child: FollowingTab(),
            ),
            Container(
              child: YourNotification(),
            )
          ]),
        ));
  }
}
