import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahin_adda/Screens/bakiPage.dart';
import 'package:shahin_adda/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              "শাহিন ভাই \n     এর \n আড্ডাখানা ",
              style: TextStyle(
                color: Color(0xFF985102),
                fontFamily: 'Mina',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Image(
              image: AssetImage('assets/images/tea.png'),
              fit: BoxFit.contain,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kButtonColor,
                shape: kButtonShape,
                minimumSize: const Size(220, 50),
              ),
              onPressed: () {
                Get.toNamed('/bill-page');
              },
              child: const Text(
                "বিল হিসাব",
                style: kButtonTextStyle,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kButtonColor,
                    shape: kButtonShape,
                    minimumSize: const Size(90, 40),
                  ),
                  onPressed: () {
                    Get.to(const BakiPage());
                  },
                  child: const Text(
                    "বাকি",
                    style: kButtonTextStyle,
                  ),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kButtonColor,
                    shape: kButtonShape,
                    minimumSize: const Size(90, 40),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      '/contract-page',
                      arguments: {'bal': "this is contract page"},
                    );
                  },
                  child: const Text(
                    "কন্ট্রাক্টস",
                    style: kButtonTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Developed By Tamim Zabir",
            ),
            const Text(
              //Rokkitt - font
              "©All rights recieved.",
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
