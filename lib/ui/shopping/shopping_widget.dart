import 'package:first_website/app/string.dart';
import 'package:first_website/data/model/shopping_data.dart';
import 'package:flutter/material.dart';

import '../../app/show_alert.dart';

class ShoppingWidget extends StatelessWidget {
  ShoppingWidget({Key? key, required this.items}) : super(key: key);

  PowerData items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(
            items.image ?? "",
            width: 200,
          ),
          const SizedBox(width: 60),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  items.title ?? "",
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "${items.price}\$",
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        AppString.addToCard,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: (){
                    showAlertDialog(context);
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
