import 'package:first_website/app/string.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  Widget backButton = TextButton(
    child: const Text(AppString.back),
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.green)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert = AlertDialog(
    title: Text(
      AppString.alertTitle,
      style: TextStyle(
        color: Colors.green.shade900,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          AppString.success,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        Image.asset("assets/success.jpg")
      ],
    ),
    actions: [
      backButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
