import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/pages/login_page.dart';

import 'history_page.dart';
import 'shop_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ShopPage());
                },
                child: const Text(
                  'New Purchase',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const HistoryPage());
                },
                child: const Text(
                  'Purchased History',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: const Text(
                  'Sign out',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
