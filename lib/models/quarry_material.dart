class QuarryMaterial {
  final String id;
  final String name;
  final double price;
  final String description;
  final String url;
  final int quantity;

  QuarryMaterial(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      this.quantity = 0,
      required this.url});

  factory QuarryMaterial.fromJson(Map<String, dynamic> json) {
    return QuarryMaterial(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      quantity: json['quantity'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'url': url,
      'price': price,
      'quantity': quantity,
    };
  }
}
