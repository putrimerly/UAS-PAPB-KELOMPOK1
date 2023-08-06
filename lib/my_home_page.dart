import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_item.dart';
import 'menu_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          height: 100.0,
          width: 100.0,
          child: ClipPolygon(
            sides: 6,
            child: Container(
              color: Colors.yellowAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.book),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Menu',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.home),
                      Text('Home', style: TextStyle(fontSize: 12.0))
                    ],
                  ),
                  Container(
                    width: 100.0,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                      Text('Keranjang', style: TextStyle(fontSize: 12.0))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 160.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ItemCard(),
                      ItemCard(),
                      ItemCard(),
                      ItemCard(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 92.0,
                          width: 120.0,
                          color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.bowlRice,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                'Menu Spesial',
                                style:
                                TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 92.0,
                        width: 120.0,
                        color: Colors.redAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.restaurant,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Menu Terlaris',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 92.0,
                        width: 124.0,
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.coffee,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Minuman',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Menu Pilihan',
                      style: TextStyle(fontSize: 22.0, color: Colors.black54),
                    ),
                    SizedBox(height: 16.0),
                    MenuItem(),
                    MenuItem(),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
