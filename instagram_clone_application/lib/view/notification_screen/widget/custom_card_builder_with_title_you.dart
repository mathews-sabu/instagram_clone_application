// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/view/notification_screen/widget/custom_notification_card_you.dart';

class CustomCardBuilderWithTitleYou extends StatefulWidget {
  const CustomCardBuilderWithTitleYou({super.key});

  @override
  State<CustomCardBuilderWithTitleYou> createState() =>
      _CustomCardBuilderWithTitleYouState();
}

class _CustomCardBuilderWithTitleYouState
    extends State<CustomCardBuilderWithTitleYou> {
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
              children:
                  List.generate(4, (index) => CustomNotificationCardYou()),
            )
          ],
        ),
      ),
    );
  }
}
