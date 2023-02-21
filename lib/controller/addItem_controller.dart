import 'package:get/get.dart';

class AddItemController extends GetxController {
  // Properties
  final _itemType = "".obs;
  final _quantity = 0.obs;
  final _price = 0.0.obs;

  // Getters
  String get itemType => _itemType.value;
  int get quantity => _quantity.value;
  double get price => _price.value;

  // Setters
  set itemType(String value) => _itemType.value = value;
  set quantity(int value) => _quantity.value = value;
  set price(double value) => _price.value = value;

  // Methods
  void saveItem() {
    // Save item to database or perform other actions
    // ...

    // Reset values
    _itemType.value = "";
    _quantity.value = 0;
    _price.value = 0.0;

    // Show success message
    Get.snackbar(
      "Success",
      "Item added successfully",
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
