import 'package:flutter/material.dart';

Widget headerContent(title, content, width) {
  return Container(
    width: width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 12,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        content(),
      ],
    ),
  );
}