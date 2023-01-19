enum OrderStatus { pending, confirmed, ongoing, deliverd, completed }

class Order {
  final String orderId;
  final String userId;
  final String quarryId;
  final String userName;
  final String quarryName;
  final String paymnetType;
  final String location;
  final double total;
  final DateTime orderDate;
  final DateTime purchasedDate;
  final DateTime? postedDate;
  final DateTime? deliveryDate;
  final OrderStatus status;
  final List items;

  Order(
      this.orderId,
      this.userId,
      this.quarryId,
      this.userName,
      this.quarryName,
      this.paymnetType,
      this.location,
      this.total,
      this.orderDate,
      this.purchasedDate,
      this.postedDate,
      this.deliveryDate,
      this.status,
      this.items);
}
