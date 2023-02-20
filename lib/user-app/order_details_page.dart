import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/order.dart';

class PurchaseOrderDetailsPage extends StatelessWidget {
  final Order purchaseOrder;

  const PurchaseOrderDetailsPage({required this.purchaseOrder});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company Name: ${purchaseOrder.quarryName}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Order ID: ${purchaseOrder.orderId}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Order Date: ${DateFormat('yyyy-MM-dd HH:mm').format(purchaseOrder.orderDate)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Delivery Date: ${DateFormat('yyyy-MM-dd HH:mm').format(purchaseOrder.deliveryDate!)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Payment Type: ${purchaseOrder.paymentType}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Total: ${purchaseOrder.total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Status: ${purchaseOrder.status.name}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Materials',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: purchaseOrder.items.length,
                itemBuilder: (context, index) {
                  var item = purchaseOrder.items[index];
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text(
                        '${item.quantity} x ${item.price.toStringAsFixed(2)}'),
                    trailing:
                        Text((item.quantity * item.price).toStringAsFixed(2)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
