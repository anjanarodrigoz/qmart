import 'package:flutter/material.dart';
import '../models/order.dart';
import 'order_details_page.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Orders'),
      ),
      body: purchaseOrders.isEmpty
          ? const Center(child: Text('No purchase orders yet.'))
          : ListView.builder(
              itemCount: purchaseOrders.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PurchaseOrderDetailsPage(
                              purchaseOrder: purchaseOrders[index]),
                        ),
                      );
                    },
                    title: Text(
                      purchaseOrders[index].userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(
                          purchaseOrders[index]
                              .status
                              .toString()
                              .split('.')
                              .last,
                          style: TextStyle(
                            color: purchaseOrders[index].status ==
                                    OrderStatus.deliverd
                                ? Colors.green
                                : Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Rs .${purchaseOrders[index].total}',
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }

  final List<Order> purchaseOrders = [
    {
      "orderId": "PO001",
      "userId": "U001",
      "quarryId": "Q001",
      "userName": "John Doe",
      "quarryName": "ABC Quarry",
      "paymentType": "Cash on delivery",
      "location": "123 Main Street, Anytown USA",
      "total": 345.67,
      "orderDate": "2022-02-10T00:00:00.000",
      "purchasedDate": "2022-02-12T00:00:00.000",
      "postedDate": "2022-02-14T00:00:00.000",
      "deliveryDate": "2022-02-16T00:00:00.000",
      "status": "deliverd",
      "items": [
        {
          "id": "M001",
          "name": "Stone 1",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          "imageURL": "https://via.placeholder.com/150",
          "price": 25.00,
          "quantity": 10
        },
        {
          "id": "M002",
          "name": "Stone 2",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          "imageURL": "https://via.placeholder.com/150",
          "price": 30.00,
          "quantity": 5
        },
        {
          "id": "M003",
          "name": "Stone 3",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          "imageURL": "https://via.placeholder.com/150",
          "price": 10.00,
          "quantity": 20
        }
      ]
    },
    {
      "orderId": "PO002",
      "userId": "U002",
      "quarryId": "Q002",
      "userName": "Jane Smith",
      "quarryName": "XYZ Quarry",
      "paymentType": "Credit card",
      "location": "456 Oak Avenue, Anytown USA",
      "total": 234.56,
      "orderDate": "2022-02-14T00:00:00.000",
      "purchasedDate": "2022-02-16T00:00:00.000",
      "postedDate": "2022-02-18T00:00:00.000",
      "deliveryDate": "2022-02-20T00:00:00.000",
      "status": "completed",
      "items": [
        {
          "id": "M004",
          "name": "Stone 4",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          "imageURL": "https://via.placeholder.com/150",
          "price": 15.00,
          "quantity": 10
        },
        {
          "id": "M005",
          "name": "Stone 5",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          "imageURL": "https://via.placeholder.com/150",
          "price": 20.00,
          "quantity": 5
        }
      ]
    }
  ].map((element) => Order.fromJson(element)).toList();
}
