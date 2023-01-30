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
          SizedBox(
            height: 50.0,
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
          const SizedBox(
            height: 50.0,
          ),
          SizedBox(
            height: 50.0,
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
          const SizedBox(height: 50.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Get.to(() => const LoginPage());
            },
            child: const Text('Sign out'),
          )
        ]),
      ),
    );
  }
}
