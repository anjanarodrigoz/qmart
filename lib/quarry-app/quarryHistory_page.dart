import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/user-app/order_details_page.dart';
import '../models/order.dart';
import '../models/quarry_material.dart';

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order History"),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              onTap: () {
                Get.to(PurchaseOrderDetailsPage(purchaseOrder: order));
              },
              title: Text("Order ${order.orderId}"),
              subtitle: Text("Status: ${order.status.name}"),
              trailing: Text(order.location),
            ),
          );
        },
      ),
    );
  }

//Demo data

  List<Order> orders = [
    Order(
      orderId: 'ORD001',
      userId: 'USER001',
      quarryId: 'QUARRY001',
      userName: 'John Doe',
      quarryName: 'ABC Quarry',
      paymentType: 'Credit Card',
      location: '123 Main Street',
      total: 125.75,
      orderDate: DateTime(2022, 10, 1, 10, 30),
      purchasedDate: DateTime(2022, 10, 2, 11, 45),
      postedDate: DateTime(2022, 10, 3, 9, 15),
      deliveryDate: DateTime(2022, 10, 4, 14, 20),
      status: OrderStatus.delivered,
      items: [
        QuarryMaterial(name: 'Sand', quantity: 2, price: 25.50),
        QuarryMaterial(name: 'Stone', quantity: 3, price: 15.00),
        QuarryMaterial(name: 'Gravel', quantity: 1, price: 20.25),
      ],
    ),
    Order(
      orderId: 'ORD002',
      userId: 'USER002',
      quarryId: 'QUARRY002',
      userName: 'Jane Smith',
      quarryName: 'XYZ Quarry',
      paymentType: 'Paypal',
      location: '456 Main Street',
      total: 79.99,
      orderDate: DateTime(2022, 10, 5, 9, 0),
      purchasedDate: DateTime(2022, 10, 6, 11, 30),
      postedDate: DateTime(2022, 10, 7, 8, 45),
      deliveryDate: DateTime(2022, 10, 8, 12, 0),
      status: OrderStatus.delivered,
      items: [
        QuarryMaterial(name: 'Sand', quantity: 1, price: 25.50),
        QuarryMaterial(name: 'Gravel', quantity: 2, price: 20.25),
      ],
    ),
    Order(
      orderId: 'ORD003',
      userId: 'USER003',
      quarryId: 'QUARRY003',
      userName: 'Bob Johnson',
      quarryName: 'PQR Quarry',
      paymentType: 'Cash',
      location: '789 Main Street',
      total: 150.00,
      orderDate: DateTime(2022, 10, 9, 14, 30),
      purchasedDate: DateTime(2022, 10, 10, 10, 15),
      postedDate: DateTime(2022, 10, 10, 10, 15),
      deliveryDate: DateTime(2022, 10, 10, 10, 15),
      status: OrderStatus.pending,
      items: [
        QuarryMaterial(name: 'Stone', quantity: 5, price: 15.00),
        QuarryMaterial(name: 'Gravel', quantity: 3, price: 20.25),
      ],
    ),
    Order(
        orderId: 'ORD004',
        userId: 'USER004',
        quarryId: 'QUARRY002',
        userName: 'Alice Lee',
        quarryName: 'XYZ Quarry',
        paymentType: 'Credit Card',
        location: '987 Main Street',
        total: 47.50,
        orderDate: DateTime(2022, 10, 11, 8, 0),
        purchasedDate: DateTime(2022, 10, 12, 13, 45),
        postedDate: DateTime(2022, 10, 13, 10, 30),
        deliveryDate: DateTime(2022, 10, 13, 10, 30),
        status: OrderStatus.pending,
        items: [
          QuarryMaterial(name: 'Stone', quantity: 5, price: 15.00, id: ''),
          QuarryMaterial(name: 'Gravel', quantity: 3, price: 20.25),
        ])
  ];
}
