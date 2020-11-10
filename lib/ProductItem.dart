import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItem extends StatelessWidget {
  ProductItem({this.boxColor});

  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Icon(
              FontAwesomeIcons.boxOpen,
              color: boxColor,
            ),
            decoration: BoxDecoration(
              color: boxColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            width: 75,
            height: 75,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF223263),
                  ),
                ),
                Text(
                  'Stock : 10',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB6BCCC),
                  ),
                )
              ],
            ),
            margin: EdgeInsets.only(left: 10),
          )
        ],
      ),
      padding: EdgeInsets.all(15),
    );
  }
}
