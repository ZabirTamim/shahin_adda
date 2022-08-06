import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime,
      child: Center(
        child: Text(Get.arguments['bal']),
      ),
    );
  }
}
