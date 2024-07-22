// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'second_page.dart';

// class Toggleswitch extends StatefulWidget {
//   const Toggleswitch({super.key});

//   @override
//   State<Toggleswitch> createState() => _ToggleswitchState();
// }

// class _ToggleswitchState extends State<Toggleswitch> {
//   get isChecked => true;
//   bool _isOn = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 250),
//             child: CupertinoSwitch(
//               value: _isOn,
//               onChanged: (value) {
//                 setState(() {
//                   _isOn = value;
//                 });
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: TextButton(
//               onPressed: () {

//                 Get.to(const Secondpage());
//               },
//               child: Text(
//                 'continue',
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               style: const ButtonStyle(
//                   backgroundColor:
//                       WidgetStatePropertyAll(Color.fromARGB(255, 2, 51, 164))),
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
