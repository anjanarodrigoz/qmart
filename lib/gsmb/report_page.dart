import 'package:flutter/material.dart';

import '../widgets/report_card.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: 600.0,
        child: ListView(children: const [
          ReportCard(
            materialType: 'Granite',
            monthlyProduction: 5000,
            cost: 7500,
            suppliers: ['Supplier A', 'Supplier B', 'Supplier C'],
            supplierCosts: [2000, 3000, 1500],
          ),
          ReportCard(
            materialType: 'Marble',
            monthlyProduction: 3000,
            cost: 4500,
            suppliers: ['Supplier X', 'Supplier Y', 'Supplier Z'],
            supplierCosts: [1000, 2000, 1500],
          ),
          ReportCard(
            materialType: 'Sandstone',
            monthlyProduction: 7000,
            cost: 10500,
            suppliers: ['Supplier P', 'Supplier Q', 'Supplier R'],
            supplierCosts: [2500, 4000, 4000],
          ),
          ReportCard(
            materialType: 'Limestone',
            monthlyProduction: 4000,
            cost: 6000,
            suppliers: ['Supplier M', 'Supplier N', 'Supplier O'],
            supplierCosts: [2000, 3000, 1000],
          )
        ]),
      ),
    );
  }
}
