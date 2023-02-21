import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/addItem_controller.dart';

class AddItemPage extends StatelessWidget {
  final _controller = Get.put(AddItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Item Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Price",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                _controller.price = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Add image picker functionality
              },
              child: const Text("Select Image"),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _controller.saveItem();
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
