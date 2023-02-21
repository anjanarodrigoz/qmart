import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String materialType;
  final int monthlyProduction;
  final double cost;
  final List<String> suppliers;
  final List<double> supplierCosts;

  const ReportCard({
    required this.materialType,
    required this.monthlyProduction,
    required this.cost,
    required this.suppliers,
    required this.supplierCosts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Material Type: $materialType',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                'Monthly Production: $monthlyProduction MT',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                'Gov. Revenu: Rs .$cost',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text(
                'Quarries:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  for (var i = 0; i < suppliers.length; i++)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${suppliers[i]}:',
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Rs. ${supplierCosts[i]}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
