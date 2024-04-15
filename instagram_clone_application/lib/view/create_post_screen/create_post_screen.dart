// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/create_post_screen/tabs/library_tab.dart';
import 'package:instagram_clone_application/view/create_post_screen/tabs/photos_tab.dart';
import 'package:instagram_clone_application/view/create_post_screen/tabs/videos_tab.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: TextButton(
              onPressed: () {},
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.primaryBlack,
                    fontWeight: FontWeight.w500),
              )),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Recents",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: ColorConstants.primaryBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 320,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      fit: BoxFit.cover)),
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.primaryBlack.withOpacity(.6)),
                      child: Icon(
                        Icons.all_inclusive,
                        color: ColorConstants.lightGrey,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.primaryBlack.withOpacity(.6)),
                      child: Icon(
                        Icons.space_dashboard_outlined,
                        color: ColorConstants.lightGrey,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorConstants.primaryBlack.withOpacity(.6)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_none,
                            color: ColorConstants.lightGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "SELECT MULTIPLE",
                            style:
                                TextStyle(color: ColorConstants.primaryWhite),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                    children: [LibraryTab(), PhotosTab(), VideosTab()]))
          ],
        ),
        bottomNavigationBar: TabBar(
            indicatorWeight: 1,
            dividerHeight: 0,
            labelColor: ColorConstants.primaryBlack,
            unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(.3),
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              )
            ]),
      ),
    );
  }
}
