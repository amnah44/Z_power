import 'package:first_website/app/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'news_List.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(30, 36, 30, 15),
            child: const Text(
              AppString.homeTitle,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          NewsList(
            image: "assets/computer.jpg",
            title: AppString.firstTitle,
            description: AppString.firstDescription,
          ),
          NewsList(
            image: "assets/brand.jpg",
            title: AppString.secondTitle,
            description: AppString.secondDescription,
          ),
        ],
      ),
    );
  }
}
