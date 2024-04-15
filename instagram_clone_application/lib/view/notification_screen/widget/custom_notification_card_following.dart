// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, dead_code

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';

class CustomNotificationCardFollowing extends StatelessWidget {
  const CustomNotificationCardFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isFollowing = true;
    bool isAlreadyFollowing = true;

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
                          "https://images.pexels.com/photos/1848471/pexels-photo-1848471.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      radius: 16,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/1813947/pexels-photo-1813947.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        radius: 18,
                        backgroundColor: ColorConstants.primaryWhite,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?auto=compress&cs=tinysrgb&w=600"),
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
