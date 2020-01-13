import 'package:flutter/material.dart';
import 'package:mobx_shop_cart/app/shared/components/cart_item/cart_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          CartItemWidget(),
          SizedBox(width: 5)
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
