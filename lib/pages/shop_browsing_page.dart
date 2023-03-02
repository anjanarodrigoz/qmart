import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/widgets/shop_card.dart';

import 'quarry_materials_page.dart';

class ShopBrowsingPage extends StatefulWidget {
  const ShopBrowsingPage({super.key});

  @override
  State<ShopBrowsingPage> createState() => _ShopBrowsingPageState();
}

class _ShopBrowsingPageState extends State<ShopBrowsingPage> {
  @override
  Widget build(BuildContext context) {
    List quarryList = map.values.toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade900,
        ),
        body: ListView.builder(
          itemCount: map.values.toList().length,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          itemBuilder: (BuildContext context, int index) {
            Map quarry = quarryList[index];
            return ShopCard(
              addToFavourite: () {
                Get.to(QuarryMaterialsPage());
              },
              description: quarry['description'],
              name: quarry['name'],
              duration: quarry['duration'],
              miles: quarry['miles'],
              rating: quarry['rate'],
              ratingCount: quarry['rateCount'] as int,
              url: quarry['url'],
              onTap: () {},
            );
          },
        ));
  }

  /* data of the quarries */

  final map = {
    '10001': {
      'id': '1001',
      'name': 'Access',
      'url':
          'https://upload.wikimedia.org/wikipedia/en/b/b6/Access_Engineering_logo.jpg',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': '',
    },
    '10002': {
      'id': '1001',
      'name': 'Metal Mix',
      'url':
          'https://www.lhpiyasena.lk/wp-content/uploads/2015/08/DSC_0484-1024x681.jpg',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': '',
    },
    '10003': {
      'id': '1001',
      'name': 'ICC',
      'url': 'https://www.icc-construct.com/site/images/cover-logo.jpg',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': '',
    },
    '10004': {
      'id': '1001',
      'name': 'Arukkaru',
      'url':
          'https://www.here.com/sites/g/files/odxslz256/files/2022-06/mining-truck-mine-blog.jpg',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': 'Largest limestone quarry',
    },
  };
}
