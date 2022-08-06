import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahin_adda/constants.dart';
import 'package:shahin_adda/controllers/billCounterController.dart';

class BillCountPage extends StatelessWidget {
  const BillCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BillCounterController controller = Get.put(BillCounterController());
    int billSum = controller.billSum();
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/totalBill.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                color: kMainBackgroundColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Total Bill:',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '৳$billSum',
                        style: const TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kButtonColor,
                shape: kButtonShape,
                minimumSize: const Size(90, 40),
              ),
              onPressed: () {
                Get.offAllNamed('/');
              },
              child: const Text(
                "Home",
                style: kButtonTextStyle,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
