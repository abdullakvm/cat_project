import 'package:cat_project/homecontroller.dart';
import 'package:cat_project/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 120),
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 30,
                    ),
                  ),
                  Text(
                    'My cart',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 65,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  color: Color.fromARGB(255, 252, 231, 229),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'You have 3 items in your list chart',
                          style: TextStyle(fontSize: 17, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                    leading: Image.network(
                        'https://5.imimg.com/data5/SELLER/Default/2022/9/ZI/PC/GF/33015238/allen-solly-men-s-polo-t-shirts.jpg'),
                    title: const Text(
                      'LP T-Shirt',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Column(children: [
                        const Text(
                          'Size - M',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Obx(
                          () => RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: '-\$',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: '${controller.total}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () {
                              controller.decrement();
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 30),
                            )),
                        Obx(() => Text(
                              '${controller.intialcount}',
                              style: const TextStyle(fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () {
                              controller.increment();
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(fontSize: 30),
                            ))
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                      leading: Image.network(
                          'https://m.media-amazon.com/images/I/61zmQE3CjGL._AC_UY1100_.jpg'),
                      title: const Padding(
                        padding: EdgeInsets.only(left: 9),
                        child: Text(
                          "CK Jeans",
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: Column(children: [
                          const Text(
                            'Size - 38',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Obx(
                            () => RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: '-\$',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${controller.total2}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.decrement2();
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Obx(() => Text(
                                '${controller.intialcount2}',
                                style: const TextStyle(fontSize: 20),
                              )),
                          TextButton(
                              onPressed: () {
                                controller.increment2();
                              },
                              child: const Text(
                                '+',
                                style: TextStyle(fontSize: 30),
                              ))
                        ],
                      )),
                ),
                const SizedBox(
                  height: 180,
                ),
                const ListTile(
                  leading: Text(
                    'Items',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 120, 120, 120),
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '\$ 126.00',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const ListTile(
                  leading: Text(
                    'Discount',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 120, 120, 120),
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '-\$ 6.00 ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const ListTile(
                  leading: Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 120, 120, 120),
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '-\$ 120.00',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const Secondpage());
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 2, 51, 164))),
                  child: const Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
