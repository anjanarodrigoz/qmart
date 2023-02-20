import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSwitch extends GetxController {
  var isSeller = false.obs;

  void toggleAccountType() {
    isSeller.value = !isSeller.value;
  }
}

class AccountSwitchWidget extends StatelessWidget {
  final AccountSwitch accountSwitch = Get.put(AccountSwitch());
  final Function(bool) onAccountTypeChanged;

  AccountSwitchWidget({required this.onAccountTypeChanged});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SwitchListTile(
        activeColor: Colors.green,
        title: Text(
          accountSwitch.isSeller.value ? 'Seller Account' : 'Buyer Account',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        value: accountSwitch.isSeller.value,
        onChanged: (value) {
          accountSwitch.toggleAccountType();
          onAccountTypeChanged(accountSwitch.isSeller.value);
        },
      ),
    );
  }
}
