import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_one/src/components/catagoryList.dart';

import 'package:ui_one/src/components/iconBar.dart';
import 'package:ui_one/src/components/itemComponent.dart';
import 'package:ui_one/src/configs/textTheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBar(),
              CatagoryList(),
              ItemComponent(),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: color_DarkBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.map_rounded,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Map View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
