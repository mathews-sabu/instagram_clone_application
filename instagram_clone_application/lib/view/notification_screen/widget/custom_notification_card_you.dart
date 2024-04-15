// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';

class CustomNotificationCardYou extends StatefulWidget {
  const CustomNotificationCardYou({super.key});

  @override
  State<CustomNotificationCardYou> createState() =>
      _CustomNotificationCardYouState();
}

class _CustomNotificationCardYouState extends State<CustomNotificationCardYou> {
  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isFollowing = true;

    bool isAlreadyFollowing = false;
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          profileImages.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2010877/pexels-photo-2010877.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      radius: 16,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/2065203/pexels-photo-2065203.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        radius: 18,
                        backgroundColor: ColorConstants.primaryWhite,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/2065203/pexels-photo-2065203.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          radius: 16,
                        ),
                      ),
                    )
                  ],
                ),
          SizedBox(
            width: 12,
          ),
          Text(
            "Kareena liked your photo. 1h",
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          isFollowing
              ? CustomButton(
                  horizontalpadding: 10,
                  verticalpadding: 8,
                  textColor: isAlreadyFollowing
                      ? ColorConstants.primaryBlack
                      : ColorConstants.primaryWhite,
                  buttonColor: isAlreadyFollowing
                      ? Colors.transparent
                      : ColorConstants.primaryBlue,
                  text: isAlreadyFollowing ? "Message" : "Follow",
                  haveBorder: isAlreadyFollowing,
                )
              : Container(
                  height: 44,
                  width: 44,
                  color: Colors.red,
                )
        ],
      ),
    );
  }
}
