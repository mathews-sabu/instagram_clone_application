// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';

class SearchCategoryCard extends StatelessWidget {
  const SearchCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: ColorConstants.primaryBlack.withOpacity(.5))),
      child: Row(
        children: [
          Icon(Icons.play_lesson_outlined),
          SizedBox(
            width: 6,
          ),
          Text("data")
        ],
      ),
    );
  }
}
