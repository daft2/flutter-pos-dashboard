import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos/ProductItem.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.white70,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search Product...',
                      prefixIcon: Icon(FontAwesomeIcons.search)),
                ),
              ),
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ProductItem(
                      boxColor: Colors.red,
                    ),
                    ProductItem(
                      boxColor: Colors.blue,
                    ),
                    ProductItem(
                      boxColor: Colors.green,
                    ),
                    ProductItem(
                      boxColor: Colors.orange,
                    ),
                    ProductItem(
                      boxColor: Colors.red,
                    ),
                  ],
                ),
                margin: EdgeInsets.all(20),
              ),
            ),
            Container(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Overall Product',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      height: MediaQuery.of(context).size.width * 0.16,
                      width: MediaQuery.of(context).size.width * 0.60,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Icon(FontAwesomeIcons.plus),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(15),
                  )
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            )
          ],
        ),
      ),
    );
  }
}
