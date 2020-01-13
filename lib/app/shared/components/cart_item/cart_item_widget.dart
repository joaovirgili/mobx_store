import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_shop_cart/app/app_module.dart';
import 'package:mobx_shop_cart/app/shared/components/cart_item/cart_controller.dart';

class CartItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var controller = AppModule.to.get<CartController>();

    return Center(
      child: Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart, size: 22), onPressed: controller.increment),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Observer(
                builder: (_) => Text(
                  "${controller.quantity}",
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
