import 'package:flutter/material.dart';
import 'menu-button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  ThemeData themeData = ThemeData.light();
  Color menuColor = Colors.white54;
  Color subTextColor = Color(0xFF566288);
  Color moneyTextColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData.copyWith(
        textTheme: themeData.textTheme.apply(fontFamily: 'Poppins'),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        child: Switch(
                          value: isSwitched,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitched = value;
                              themeData = isSwitched
                                  ? ThemeData.dark()
                                  : ThemeData.light();
                              menuColor =
                                  isSwitched ? Colors.black26 : Colors.white54;
                              subTextColor =
                                  isSwitched ? Colors.white : Color(0xFF566288);
                              moneyTextColor = isSwitched
                                  ? Colors.redAccent
                                  : Colors.blueAccent;
                            });
                          },
                          inactiveTrackColor: Colors.black26,
                          activeTrackColor: Colors.white70,
                          activeColor: Colors.white,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Total Sales',
                        style: TextStyle(
                          fontSize: 11,
                          color: subTextColor,
                        ),
                      ),
                      Text(
                        'Rp. 2,000,836',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: moneyTextColor),
                      )
                    ],
                  ),
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: menuColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MenuButton(
                        imgPath: 'assets/images/product.png',
                        labelMenuButton: 'Product',
                        menuColor: menuColor,
                        subTextColor: subTextColor,
                      ),
                    ),
                    Expanded(
                      child: MenuButton(
                        imgPath: 'assets/images/cart.png',
                        labelMenuButton: 'Point of Sale',
                        menuColor: menuColor,
                        subTextColor: subTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MenuButton(
                        imgPath: 'assets/images/user.png',
                        labelMenuButton: 'User',
                        menuColor: menuColor,
                        subTextColor: subTextColor,
                      ),
                    ),
                    Expanded(
                      child: MenuButton(
                        imgPath: 'assets/images/distributor.png',
                        labelMenuButton: 'Shipping',
                        menuColor: menuColor,
                        subTextColor: subTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
