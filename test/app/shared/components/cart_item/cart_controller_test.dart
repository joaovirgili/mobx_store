import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_shop_cart/app/shared/components/cart_item/cart_controller.dart';

import 'package:mobx_shop_cart/app/app_module.dart';

void main() {
  initModule(AppModule());
  CartController cart;

  setUp(() {
    cart = AppModule.to.get<CartController>();
  });

  group('CartController Test', () {
    test("First Test", () {
      expect(cart, isInstanceOf<CartController>());
    });

    test("Add to cart", () {
      expect(cart.quantity, equals(0));
      cart.add();
      expect(cart.quantity, equals(1));
    });

    test("Remove from cart", () {
      expect(cart.quantity, equals(1));
      cart.remove();
      expect(cart.quantity, equals(0));
    });
  });
}
