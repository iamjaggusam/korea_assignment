import 'package:flutter/material.dart';

import 'resize_all.dart';

Widget customNav(BuildContext context) {
  return Container(
    height: ResponsiveUtil.resizeHeightOrWidth(context, 120),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 149, 149, 149),
          spreadRadius: 0.5,
          blurRadius: 16,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "LOGO",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        )),
  );
}
