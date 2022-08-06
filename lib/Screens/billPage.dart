import 'package:flutter/material.dart';
import 'package:shahin_adda/Screens/billCountPage.dart';
import 'package:shahin_adda/constants.dart';
import 'package:get/get.dart';
import 'package:shahin_adda/widgets/billCounter.dart';
import 'package:shahin_adda/controllers/billCounterController.dart';
import 'package:shahin_adda/blueprints/billData.dart';

class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BillCounterController controller = Get.put(BillCounterController());

    List<TileData> items = [
      TileData(productName: "Gold leaf", price: 11),
      TileData(productName: "B&H", price: 15),
      TileData(productName: "Royal", price: 5),
      TileData(productName: "Tea (red)", price: 5),
      TileData(productName: "Tea (powder milk)", price: 10),
      TileData(productName: "Tea (condesd milk)", price: 5),
      TileData(productName: "cake/bread(5 tk)", price: 5),
      TileData(productName: "cake/bread(6 tk)", price: 7),
      TileData(productName: "cake/bread(10 tk)", price: 8),
      TileData(productName: "chips(10 tk)", price: 10),
    ];

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.offNamed('/');
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        color: Color(0xFF985102),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "কি কি খাইসেন কন ! ",
                    style: TextStyle(
                      color: Color(0xFF985102),
                      fontFamily: 'Mina',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              color: kMainBackgroundColor,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0x50FDBA70),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: ListTile(
                        leading: Text("${items[index].productName}"),
                        trailing: SizedBox(
                          child: BillCounter(
                              myCounter: controller.counters[index]),
                          height: 50,
                          width: 104,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: items.length,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kMainBackgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.billSum();
                      Get.to(const BillCountPage());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Total Bill ➜",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
