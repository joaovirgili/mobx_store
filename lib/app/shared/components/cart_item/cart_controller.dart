import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartBase with _$CartController;

abstract class _CartBase with Store {
  @observable
  int quantity = 0;

  @action
  void increment() {
    quantity++;
  }
}
