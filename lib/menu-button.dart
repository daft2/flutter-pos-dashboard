import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton(
      {this.imgPath, this.labelMenuButton, this.menuColor, this.subTextColor});

  final String imgPath;
  final String labelMenuButton;
  final Color menuColor;
  final Color subTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$labelMenuButton Button pressed.');
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imgPath),
              height: 150,
              width: 150,
            ),
            Text(
              labelMenuButton,
              style: TextStyle(
                color: subTextColor,
              ),
            )
          ],
        ),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: menuColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
