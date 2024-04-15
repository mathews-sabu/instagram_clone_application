// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/search_screen/widget/custom_search_result_grid.dart';
import 'package:instagram_clone_application/view/search_screen/widget/search_category_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        fillColor: ColorConstants.primaryBlack.withOpacity(.07),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        hintText: "Search",
                        prefixIconConstraints: BoxConstraints(minWidth: 50),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                        )),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.select_all_sharp,
                        size: 33,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorConstants.primaryBlack.withOpacity(.1)))),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: SearchCategoryCard(),
                          )),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                    4,
                    (index) => CustomSearchResultGrid(
                          isIndexEven: index.isEven,
                        )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
