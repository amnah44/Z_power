import 'package:first_website/app/string.dart';
import 'package:first_website/ui/main/main_tab_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (builder, context) {
            if (context.maxWidth > 515) {
              return const MainTabPage();
            } else {
              return SizedBox(
                child: Center(
                  child: Text(
                    AppString.welcomeText,
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 40,
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
