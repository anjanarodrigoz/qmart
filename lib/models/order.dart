import 'quarry_material.dart';

enum OrderStatus { pending, confirmed, ongoing, delivered, completed }

class Order {
  final String orderId;
  final String userId;
  final String quarryId;
  final String userName;
  final String quarryName;
  final String paymentType;
  final String location;
  final double total;
  final DateTime orderDate;
  final DateTime purchasedDate;
  final DateTime? postedDate;
  final DateTime? deliveryDate;
  final OrderStatus status;
  final List<QuarryMaterial> items;

  Order({
    required this.orderId,
    required this.userId,
    required this.quarryId,
    required this.userName,
    required this.quarryName,
    required this.paymentType,
    required this.location,
    required this.total,
    required this.orderDate,
    required this.purchasedDate,
    required this.status,
    required this.items,
    this.postedDate,
    this.deliveryDate,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    var itemsList = json['items'] as List;
    List<QuarryMaterial> items =
        itemsList.map((i) => QuarryMaterial.fromJson(i)).toList();
    return Order(
      orderId: json['orderId'],
      userId: json['userId'],
      quarryId: json['quarryId'],
      userName: json['userName'],
      quarryName: json['quarryName'],
      paymentType: json['paymentType'],
      location: json['location'],
      total: json['total'],
      orderDate: DateTime.parse(json['orderDate']),
      purchasedDate: DateTime.parse(json['purchasedDate']),
      postedDate: json['postedDate'] != null
          ? DateTime.parse(json['postedDate'])
          : null,
      deliveryDate: json['deliveryDate'] != null
          ? DateTime.parse(json['deliveryDate'])
          : null,
      status: OrderStatus.values.byName(json['status']),
      items: items,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> items =
        this.items.map((i) => i.toJson()).toList();
    return {
      'orderId': orderId,
      'userId': userId,
      'quarryId': quarryId,
      'userName': userName,
      'quarryName': quarryName,
      'paymentType': paymentType,
      'location': location,
      'total': total,
      'orderDate': orderDate.toIso8601String(),
      'purchasedDate': purchasedDate.toIso8601String(),
      'postedDate': postedDate?.toIso8601String(),
      'deliveryDate': deliveryDate?.toIso8601String(),
      'status': status.name,
      'items': items,
    };
  }
}
