

import 'package:bottomnavigationbar/custom/hexcolor.dart';
import 'package:flutter/cupertino.dart';

Column navigationButtonImage ( int _currentTab, int index, String name, String tabImage, String image ) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 24,
        height: 24,
        child: Image(
          image: _currentTab == index ? AssetImage(tabImage) :AssetImage(image),
          height: 24,
          width: 24,
        ),
      ),
      SizedBox(height: 10,),
      Text(
        name,
        style: TextStyle(
          color: _currentTab == index ? Color(hexColor("#7F3DFF")) : Color(hexColor("#C6C6C6")),
        ),
      ),
    ],
  );
}