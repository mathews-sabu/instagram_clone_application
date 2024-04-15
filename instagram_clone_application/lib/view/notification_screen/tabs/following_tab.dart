// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/notification_screen/widget/custom_card_builder_with_title_following.dart';

class FollowingTab extends StatelessWidget {
  const FollowingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Text(""),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorConstants.primaryBlack.withOpacity(.3)))),
            ),
            Column(
              children: List.generate(
                  10, (index) => CustomCardBuilderWithTitleFollowing()),
            )
          ],
        ),
      ),
    );
  }
}
