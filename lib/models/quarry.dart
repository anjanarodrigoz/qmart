class Quarry {
  String company;
  String ownerName;
  String mobileNumber;
  String brId;
  String location;
  String quarryType;
  String email;
  String description;
  String quarryId;
  String password;
  bool isRegistered;

  Quarry({
    required this.company,
    required this.ownerName,
    required this.mobileNumber,
    required this.brId,
    required this.location,
    required this.quarryType,
    required this.email,
    required this.description,
    required this.quarryId,
    required this.password,
    required this.isRegistered,
  });

  // JSON serialization and deserialization
  factory Quarry.fromJson(Map<String, dynamic> json) {
    return Quarry(
      company: json['company'],
      ownerName: json['ownerName'],
      mobileNumber: json['mobileNumber'],
      brId: json['brId'],
      location: json['location'],
      quarryType: json['quarryType'],
      email: json['email'],
      description: json['description'],
      quarryId: json['quarryId'],
      password: json['password'],
      isRegistered: json['isRegistered'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'company': company,
      'ownerName': ownerName,
      'mobileNumber': mobileNumber,
      'brId': brId,
      'location': location,
      'quarryType': quarryType,
      'email': email,
      'description': description,
      'quarryId': quarryId,
      'password': password,
      'isRegistered': isRegistered,
    };
  }
}
