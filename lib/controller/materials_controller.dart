import 'package:get/get.dart';

import '../models/item.dart';

class QuarryMaterialsController extends GetxController {
  final _quarryMaterials = <QuarryMaterial>[
    QuarryMaterial(
      id: '1',
      name: 'Granite',
      description:
          'A light-colored igneous rock with grains large enough to be visible with the unaided eye.',
      url: 'https://mcshardscape.com/wp-content/uploads/2019/09/IMG_7671.jpeg',
      price: 50.0,
    ),
    QuarryMaterial(
      id: '2',
      name: 'Marble',
      description:
          'A hard crystalline metamorphic rock that takes a high polish.',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICJL7LC49ryp2Ux81tMsyvIf1lgQbQXE1jbv74ufpeU1-vw8ZPpdygRbosf25iHk4oXA&usqp=CAU',
      price: 75.0,
    ),
    QuarryMaterial(
      id: '3',
      name: 'Sandstone',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 35.0,
    ),
  ];

  List<QuarryMaterial> get quarryMaterials => _quarryMaterials;
}
