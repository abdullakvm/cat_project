import 'package:cat_project/second_page.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Homecontroller extends GetxController {
  var intialcount = 1.obs;
  RxDouble price = 89.00.obs;
  double get total => intialcount.value * price.value;

  void increment() {
    intialcount++;
    // print(intialcount);
  }

  void decrement() {
    if (intialcount >= 2) {
      intialcount--;
    }
  }

  var intialcount2 = 1.obs;
  RxDouble price2 = 95.0.obs;
  double get total2 => intialcount2.value * price2.value;

  void increment2() {
    intialcount2++;
  }

  void decrement2() {
    if (intialcount2 >= 2) {
      intialcount2--;
    }
  }
}

class AppRoutes {
  static const home = '/home2';
  static const swit = '/Toggleswitch';
}

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const Secondpage(),
    ),
  ];
  static final List<GetPage> page2 = [
    GetPage(
      name: AppRoutes.swit,
      page: () => const Secondpage(),
    ),
  ];
}
