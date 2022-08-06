import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahin_adda/Screens/bakiPage.dart';
import 'package:shahin_adda/Screens/billPage.dart';
import 'package:shahin_adda/Screens/contractPage.dart';
import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/bill-page', page: () => const BillPage()),
        GetPage(name: '/baki-page', page: () => const BakiPage()),
        GetPage(name: '/contract-page', page: () => const ContractPage()),
      ],
    );
  }
}
