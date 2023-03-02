import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/user-app/shop_browsing_page.dart';

import '../quarry-app/quarryHistory_page.dart';
import 'report_page.dart';

class MonitoringHomePage extends StatelessWidget {
  const MonitoringHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitoring App'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _buildCard(
                  title: 'view Quarry',
                  icon: Icons.store,
                  onTap: () {
                    Get.to(const ShopBrowsingPage());
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
                  title: 'Report',
                  icon: Icons.stacked_line_chart_outlined,
                  onTap: () {
                    Get.to(const ReportPage());
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
          color: Colors.blue[400],
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
