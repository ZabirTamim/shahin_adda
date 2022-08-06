import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahin_adda/controllers/billCounterController.dart';

class BillCounter extends StatelessWidget {
  final BillCounterController controller = Get.put(BillCounterController());
  BillCounter({this.myCounter});
  final RxInt? myCounter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            controller.counterDecrement(myCounter);
          },
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 20,
        ),
        Obx(() {
          return Text("${myCounter}");
        }),
        IconButton(
          onPressed: () {
            controller.counterIncrement(myCounter);
          },
          icon: const Icon(Icons.arrow_forward_ios),
          iconSize: 20,
        ),
      ],
    );
  }
}
