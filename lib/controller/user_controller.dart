import 'package:get/get.dart';

import '../models/user.dart';

class UserRegistrationController extends GetxController {
  late String name;
  late String mobileNumber;
  late String password;
  late String location;
  late String email;

  void registerUser() {
    // create a user object with the entered data
    User user = User(
      firstName: name,
      mobileNumber: mobileNumber,
      password: password,
      location: location,
      email: email,
    );

    // TODO: save user data to a database or API

    // show a success message to the user
    Get.snackbar(
      'Success',
      'User registration completed successfully',
      duration: const Duration(seconds: 3),
    );
  }
}
