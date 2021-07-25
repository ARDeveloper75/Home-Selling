import 'package:flutter/material.dart';

import 'package:ui_one/src/configs/textTheme.dart';

class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: color_White,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: color_Grey),
                  ),
                  child: Icon(Icons.menu),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: color_White,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: color_Grey),
                  ),
                  child: Icon(Icons.settings),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: themeData.textTheme.bodyText2,
                  ),
                  Text(
                    'San Francisco',
                    style: themeData.textTheme.headline1,
                  ),
                  Divider()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
