import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counterNumber = 0.obs;

  /// increment number
  incrementCounter() {
    counterNumber.value++;
  }

  /// decrement number

  decrementCounter() {
    counterNumber.value--;
  }
}
