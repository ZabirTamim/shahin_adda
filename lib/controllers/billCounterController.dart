import 'package:get/get.dart';
import 'package:shahin_adda/blueprints/billData.dart';
import 'package:shahin_adda/Screens/billPage.dart';

class BillCounterController extends GetxController {
  List counters = [
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs,
    0.obs
  ];

  void counterIncrement(counter) {
    counter++;
  }

  void counterDecrement(counter) {
    if (counter != 0) {
      counter--;
    }
  }

  int billSum() {
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
    int sum = 0;
    int indx = 0;
    for (RxInt i in counters) {
      sum += i.value * items[indx].price!;
      indx++;
    }
    return sum;
  }
}
