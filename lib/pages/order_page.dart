import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';
import 'package:qmart/pages/quarry_materials_page.dart';

import '../models/item.dart';

class QuarryMaterialDetailPage extends StatelessWidget {
  final QuarryMaterial quarryMaterial;

  QuarryMaterialDetailPage({required this.quarryMaterial});

  final _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(quarryMaterial.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: ImageNetwork(
            image: quarryMaterial.url,
            width: double.infinity,
            height: double.infinity,
            duration: 1500,
            curve: Curves.bounceIn,
            onPointer: true,
            debugPrint: false,
            fullScreen: false,
            fitAndroidIos: BoxFit.fill,
            fitWeb: BoxFitWeb.cover,
            onLoading: const CircularProgressIndicator(
              color: Colors.black,
            ),
            onError: const Icon(
              Icons.error,
              color: Colors.red,
            ),
            onTap: () {
              debugPrint("©gabriel_patrick_souza");
            },
          )),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quarryMaterial.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  quarryMaterial.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Text(
                  'Price: \$${quarryMaterial.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    labelText: 'Quantity',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    final int quantity =
                        int.tryParse(_quantityController.text) ?? 1;
                    Get.to(OrderProcessingPage(
                      quarryMaterial: quarryMaterial,
                      quantity: quantity,
                    ));
                  },
                  child: const Text('Order'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderProcessingPage extends StatefulWidget {
  final QuarryMaterial quarryMaterial;
  final int quantity;

  const OrderProcessingPage(
      {required this.quarryMaterial, required this.quantity});

  @override
  State<OrderProcessingPage> createState() => _OrderProcessingPageState();
}

class _OrderProcessingPageState extends State<OrderProcessingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Processing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Processing your order...'),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _processOrder();
  }

  void _processOrder() async {
    // Simulate order processing time
    await Future.delayed(const Duration(seconds: 3));

    // Show order confirmation dialog
    Get.dialog(AlertDialog(
        title: const Text('Order Created'),
        content: Text(
            'Your order for ${widget.quarryMaterial.name} x ${widget.quantity} has been created.'),
        actions: [
          TextButton(
            onPressed: () => Get.offAll(QuarryMaterialsPage()),
            child: const Text('Go to Home'),
          )
        ]));
  }
}
