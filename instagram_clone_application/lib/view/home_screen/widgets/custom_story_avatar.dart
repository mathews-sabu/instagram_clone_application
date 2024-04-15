// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar(
      {super.key,
      this.isLive = false,
      required this.profilePic,
      required this.userName});
  final bool isLive;
  final String profilePic;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 90,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        end: Alignment.bottomRight,
                        colors: [
                          ColorConstants.normalPurple,
                          ColorConstants.normalPink
                        ])),
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: ColorConstants.lightGrey,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profilePic),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: isLive == true
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                ColorConstants.normalPink,
                                ColorConstants.normalRed
                              ]),
                              border: Border.all(
                                  color: ColorConstants.primaryWhite, width: 4),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Live",
                              style: TextStyle(
                                  color: ColorConstants.primaryWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : SizedBox())
            ],
          ),
          SizedBox(),
          Text(userName)
        ],
      ),
    );
  }
}
