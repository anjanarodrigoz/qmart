class Quarry {
  final String mobileNumber;
  final String email;
  String name;
  String password;
  String? registerId;
  final String location;
  final bool isRegisterd;

  Quarry(
      {required this.location,
      required this.mobileNumber,
      required this.email,
      required this.isRegisterd,
      required this.name,
      required this.password,
      this.registerId});
}
