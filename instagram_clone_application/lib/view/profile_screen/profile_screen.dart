// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/dummy_db.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currentIndexTab = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.lock,
                size: 15,
              ),
              Text(
                " jacob_w",
                style: TextStyle(fontSize: 18),
              ),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          actions: [
            Icon(
              Icons.menu,
              size: 30,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: ColorConstants.primaryBlack
                                          .withOpacity(.3))),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "54",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("Posts")
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "834",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Followers")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "162",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Following")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jacob West",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Digital goodies designer"),
                        Text("Everything is designed")
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.primaryBlack),
                            ),
                          ),
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              border: Border.all(
                                  color: ColorConstants.primaryBlack
                                      .withOpacity(.3))),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          CircleAvatar(
                            backgroundColor:
                                ColorConstants.primaryBlack.withOpacity(.3),
                            radius: 36,
                            child: Center(
                              child: CircleAvatar(
                                radius: 34,
                                child: Icon(Icons.add),
                                backgroundColor: ColorConstants.primaryWhite,
                              ),
                            ),
                          ),
                          Row(
                            children: List.generate(
                              6,
                              (index) => Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: ColorConstants.primaryBlack
                                                .withOpacity(.3))),
                                  ),
                                  CircleAvatar(
                                    radius: 33,
                                    backgroundImage: NetworkImage(
                                        "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
              Divider(),
              TabBar(
                  onTap: (value) {
                    setState(() {
                      currentIndexTab = value;
                    });
                  },
                  dividerHeight: 0,
                  indicatorColor: ColorConstants.primaryBlack,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: ColorConstants.primaryBlack,
                  unselectedLabelColor:
                      ColorConstants.primaryBlack.withOpacity(.3),
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.account_box_outlined,
                        size: 30,
                      ),
                    )
                  ]),
              currentIndexTab == 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      itemCount: DummyDb.postsList.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(DummyDb.postsList[index]),
                                fit: BoxFit.cover)),
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      itemCount: DummyDb.taggedPostsList.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    DummyDb.taggedPostsList[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
