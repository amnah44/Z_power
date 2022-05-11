import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.controller,
    required this.tabs,
  }) : super(key: key);

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.35,
      child: TabBar(
        indicatorColor: Colors.transparent,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.green.shade900,
        ),
        indicatorPadding: const EdgeInsets.all(6),
        unselectedLabelColor: Colors.green.shade900,
        labelColor: Colors.white,
        controller: controller,
        tabs: tabs,
      ),
    );
  }
}
