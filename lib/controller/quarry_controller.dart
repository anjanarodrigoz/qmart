import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuarryRegistrationController extends GetxController {
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final companyNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  final typeController = TextEditingController();
  final descriptionController = TextEditingController();
  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final brIdController = TextEditingController();

  void registerQuarry() {
    if (formKey1.currentState!.validate() &&
        formKey2.currentState!.validate()) {
      String companyName = companyNameController.text;
      String mobileNumber = mobileNumberController.text;
      String email = emailController.text;
      String location = locationController.text;
      String type = typeController.text;
      String description = descriptionController.text;
      String id = idController.text;
      String password = passwordController.text;
      String brid = brIdController.text;

      // Save the registration data to a database or API
      // TODO: Implement data saving logic

      // Clear the form fields
      companyNameController.clear();
      mobileNumberController.clear();
      emailController.clear();
      locationController.clear();
      typeController.clear();
      descriptionController.clear();
      idController.clear();
      passwordController.clear();
      brIdController.clear();
      // Show a success message
      Get.snackbar('Success', 'Quarry registered successfully!');
    }
  }
}
