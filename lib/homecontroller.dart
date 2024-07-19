import 'package:cat_project/second_page.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController {
  var intialcount = 1.obs;

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
}

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const Secondpage(),
    ),
  ];
}
