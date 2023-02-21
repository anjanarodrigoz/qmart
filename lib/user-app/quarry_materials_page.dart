import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';

import '../controller/materials_controller.dart';

class QuarryMaterialsPage extends StatelessWidget {
  final _quarryMaterialsController = Get.put(QuarryMaterialsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quarry Materials'),
      ),
      body: ListView.builder(
        itemCount: _quarryMaterialsController.quarryMaterials.length,
        itemBuilder: (context, index) {
          final quarryMaterial =
              _quarryMaterialsController.quarryMaterials[index];
          return ListTile(
            onTap: () {},
            leading: SizedBox(
                width: 50,
                height: 50,
                child: ImageNetwork(
                  image: quarryMaterial.url,
                  width: double.infinity,
                  height: double.infinity,
                  duration: 1500,
                  curve: Curves.bounceIn,
                  onPointer: true,
                  debugPrint: false,
                  fullScreen: false,
                  fitAndroidIos: BoxFit.fill,
                  fitWeb: BoxFitWeb.cover,
                  onLoading: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                  onError: const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                  onTap: () {
                    debugPrint("©gabriel_patrick_souza");
                  },
                )),
            title: Text(quarryMaterial.name),
            subtitle:
                Text('Price: \$${quarryMaterial.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
