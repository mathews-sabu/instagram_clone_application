// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CustomSearchResultGrid extends StatelessWidget {
  CustomSearchResultGrid({super.key, required this.isIndexEven});
  final bool isIndexEven;
  final imageList = [
    "https://images.pexels.com/photos/5944848/pexels-photo-5944848.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1921168/pexels-photo-1921168.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6347685/pexels-photo-6347685.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6197266/pexels-photo-6197266.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6538857/pexels-photo-6538857.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          isIndexEven
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).width * .33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/371985/pexels-photo-371985.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).width * .33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.sizeOf(context).width * .66,
                        width: MediaQuery.sizeOf(context).width * .66,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/1820563/pexels-photo-1820563.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.sizeOf(context).width * .66,
                        width: MediaQuery.sizeOf(context).width * .66,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?b=1&s=612x612&w=0&k=20&c=C318sxgBBIO66E7vi_0Eu3lXHm9uRDauKvRgeyxY2O4="),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).width * .33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1381679/pexels-photo-1381679.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).width * .33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1674624/pexels-photo-1674624.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageList[index]),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
