import 'package:get/get.dart';

class CounterAppController extends GetxController {
  RxInt counterNumber = 0.obs;

  incrementNumber() {
    counterNumber.value++;
  }

  decrement() {
    if (counterNumber.value > 0) {
      counterNumber.value--;
    }
  }
}
