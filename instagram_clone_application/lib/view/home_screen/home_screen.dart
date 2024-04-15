// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/image_constants.dart';
import 'package:instagram_clone_application/dummy_db.dart';
import 'package:instagram_clone_application/view/home_screen/widgets/custom_post_container.dart';
import 'package:instagram_clone_application/view/home_screen/widgets/custom_story_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.camera_alt_outlined,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          ],
          title: Image.asset(
            ImageConstants.instagramTextLogoPng,
            scale: 1.5,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      DummyDb.storyList.length,
                      (index) => CustomStoryAvatar(
                            profilePic: DummyDb.storyList[index]["profilePic"],
                            userName: DummyDb.storyList[index]["userName"],
                            isLive: DummyDb.storyList[index]["isLive"],
                          )),
                ),
              ),
              // 2 Custom post section
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DummyDb.homePostList.length,
                itemBuilder: (context, index) => CustomPostContainer(
                  userName: DummyDb.homePostList[index]["userName"].toString(),
                  proPic: DummyDb.homePostList[index]["proPic"].toString(),
                  location: DummyDb.homePostList[index]["location"].toString(),
                  caption: DummyDb.homePostList[index]["caption"].toString(),
                  isLiked: DummyDb.homePostList[index]["liked"],
                  postImagesList: DummyDb.homePostList[index]["posts"],
                ),
              )
            ],
          ),
        ));
  }
}
