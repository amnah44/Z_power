import 'package:first_website/app/string.dart';
import 'package:first_website/data/model/content_view.dart';
import 'package:first_website/ui/main/custom_tab.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../shopping/shopping_page.dart';
import 'custom_tab_bar.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({Key? key}) : super(key: key);

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<ContentView> contentView = [
    ContentView(
      tab: const CustomTab(title: AppString.home),
      content: const HomePage(),
    ),
    ContentView(
      tab: const CustomTab(title: AppString.shopping),
      content: ShoppingPage(),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: contentView.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 16),
                const SizedBox(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/logo.jpg"),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  AppString.logo,
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CustomTabBar(
              controller: _tabController!,
              tabs: contentView.map((e) => e.tab).toList(),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.89,
          child: TabBarView(
            controller: _tabController,
            children: contentView.map((e) => e.content).toList(),
          ),
        ),
      ],
    );
  }
}
