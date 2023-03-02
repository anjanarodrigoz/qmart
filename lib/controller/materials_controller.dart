import 'package:get/get.dart';

import '../models/quarry_material.dart';

class QuarryMaterialsController extends GetxController {
  final _quarryMaterials = <QuarryMaterial>[
    QuarryMaterial(
      id: '1',
      name: 'C1-600mm×600mm',
      description:
          'A light-colored igneous rock with grains large enough to be visible with the unaided eye.',
      url: 'https://mcshardscape.com/wp-content/uploads/2019/09/IMG_7671.jpeg',
      price: 10.0,
    ),
    QuarryMaterial(
      id: '2',
      name: '6"×9"',
      description:
          'A hard crystalline metamorphic rock that takes a high polish.',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICJL7LC49ryp2Ux81tMsyvIf1lgQbQXE1jbv74ufpeU1-vw8ZPpdygRbosf25iHk4oXA&usqp=CAU',
      price: 20.0,
    ),
    QuarryMaterial(
      id: '3',
      name: 'ABC[0-37.5mm]',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 30.0,
    ),
    QuarryMaterial(
      id: '3',
      name: 'ABC[0-37.5mm]',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 40.0,
    ),
    QuarryMaterial(
      id: '3',
      name: '1 1/2"[25-37.5mm]',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 50.0,
    ),
    QuarryMaterial(
      id: '3',
      name: '3/4"[10-19mm]',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 60.0,
    ),
    QuarryMaterial(
      id: '3',
      name: 'Chips[5-10mm]',
      description:
          'A sedimentary rock consisting of sand or quartz grains cemented together.',
      url:
          'https://rocknsoil.com.au/wp-content/uploads/2022/04/red-sandstone-gravel.jpg',
      price: 70.0,
    ),
  ];

  List<QuarryMaterial> get quarryMaterials => _quarryMaterials;
}
