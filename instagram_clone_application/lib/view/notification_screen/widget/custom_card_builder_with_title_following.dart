// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/view/notification_screen/widget/custom_notification_card_following.dart';

class CustomCardBuilderWithTitleFollowing extends StatelessWidget {
  const CustomCardBuilderWithTitleFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                  4, (index) => CustomNotificationCardFollowing()),
            )
          ],
        ),
      ),
    );
  }
}
