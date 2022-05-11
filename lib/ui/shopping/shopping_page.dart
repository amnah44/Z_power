import 'package:first_website/ui/shopping/shopping_widget.dart';
import 'package:flutter/material.dart';
import '../../data/fake_data/fake_devices_data.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      showTrackOnHover: true,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (builder, index) {
          return ShoppingWidget(items: FakeShoppingData.shoppingData[index]);
        },
        itemCount: FakeShoppingData.shoppingData.length,
      ),
    );
  }
}
