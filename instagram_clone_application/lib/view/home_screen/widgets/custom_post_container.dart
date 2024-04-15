// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';

class CustomPostContainer extends StatefulWidget {
  const CustomPostContainer({
    super.key,
    required this.userName,
    required this.proPic,
    required this.location,
    required this.postImagesList,
    this.isLiked = false,
    this.caption,
  });
  final String userName;
  final String proPic;
  final String location;
  final List<String> postImagesList;
  final bool isLiked;
  final String? caption;

  @override
  State<CustomPostContainer> createState() => _CustomPostContainerState();
}

class _CustomPostContainerState extends State<CustomPostContainer> {
  int currentPage = 1;
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(widget.proPic),
              ),
              title: Row(
                children: [
                  Text(
                    widget.userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.verified,
                    color: ColorConstants.primaryBlue,
                    size: 18,
                  )
                ],
              ),
              subtitle: Text(
                widget.location,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.more_horiz),
            ),
            Stack(children: [
              SizedBox(
                height: 300,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.postImagesList.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.postImagesList[index]))),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.5),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Text(
                    "$currentPage/${widget.postImagesList.length}",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 14),
                  ),
                ),
              )
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Row(
                    children: [
                      widget.isLiked
                          ? Icon(
                              Icons.favorite_rounded,
                              size: 25,
                              color: ColorConstants.normalRed,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: 25,
                            ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.messenger_outline,
                        size: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.send,
                        size: 25,
                      ),
                    ],
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        widget.postImagesList.length,
                        (index) => CircleAvatar(
                              backgroundColor: (index == currentPage - 1)
                                  ? ColorConstants.primaryBlue
                                  : null,
                              radius: (index == currentPage - 1) ? 5 : 3,
                            )),
                  )),
                  Icon(
                    Icons.bookmark_border,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.proPic),
                    radius: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Liked by ",
                          style: TextStyle(
                              color: ColorConstants.primaryBlack, fontSize: 16),
                          children: [
                        TextSpan(
                            text: "craig_love",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontSize: 16)),
                        TextSpan(
                            text: "56,789 others",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: widget.userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.primaryBlack),
                          children: [
                        TextSpan(
                            text: widget.caption ?? "",
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "September 19",
                    style: TextStyle(
                        color: ColorConstants.primaryBlack.withOpacity(.6)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
