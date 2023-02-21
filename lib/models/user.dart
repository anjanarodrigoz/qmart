class User {
  String firstName;
  String? lastName;
  String password;
  final String mobileNumber;
  final String email;

  User(
      {required this.email,
      required this.mobileNumber,
      required this.firstName,
      required this.password,
      this.lastName,
      required String location});
}
