import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/quarry-app/add_item_page.dart';

import 'quarryHistory_page.dart';

class QuarryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quarry App'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueGrey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Company: Metal mix',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/quarry-info');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                  child: const Text('Edit'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _buildCard(
                  title: 'Add Item',
                  icon: Icons.add,
                  onTap: () {
                    Get.to(AddItemPage());
                  },
                ),
                _buildCard(
                  title: 'Order History',
                  icon: Icons.history,
                  onTap: () {
                    Get.to(OrderHistoryPage());
                  },
                ),
                _buildCard(
                  title: 'Current Order',
                  icon: Icons.assignment,
                  onTap: () {
                    Get.to(OrderHistoryPage());
                  },
                ),
                _buildCard(
                  title: 'Logout',
                  icon: Icons.logout,
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
      {required String title,
      required IconData icon,
      required Function onTap}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 60),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
