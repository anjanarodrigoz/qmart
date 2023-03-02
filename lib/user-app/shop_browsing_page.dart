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
          'https://www.google.com/search?q=access+engineering+plc&sxsrf=AJOqlzVdjqK1iG9rH35zcEaAodc4ro-dKw:1677696476627&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjK3J60srv9AhWT-XMBHaYvCNEQ_AUoA3oECAEQBQ&biw=958&bih=908&dpr=1#imgrc=0s7k3wJcCu0_oM ',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': 'Largest limestone quarry',
    },
    '10002': {
      'id': '1001',
      'name': 'Metal Mix',
      'url':
          'https://www.google.com/search?q=metal+mix+quarry&tbm=isch&ved=2ahUKEwiPsrHDsrv9AhWy03MBHZekBtEQ2-cCegQIABAA&oq=metal+mix+quarry&gs_lcp=CgNpbWcQAzoECCMQJzoFCAAQgAQ6BAgAEB46BggAEAgQHjoHCAAQgAQQGFCiBViRGGCeH2gAcAB4AIABS4gBuwSSAQE4mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=_J3_Y4_EF7Knz7sPl8maiA0&bih=908&biw=958#imgrc=WbwKB9_6wlpPGM ',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': 'Largest limestone quarry',
    },
    '10003': {
      'id': '1001',
      'name': 'ICC',
      'url':
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficc-construct.com%2Fproperty-development%2Fmount-clifford-residencies&psig=AOvVaw3QMs8NwkPSy-gex-VryPXH&ust=1677782968069000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKCt3-Cyu_0CFQAAAAAdAAAAABAE ',
      'rate': 4.6,
      'rateCount': 15,
      'miles': 0.4,
      'duration': '45-60',
      'description': 'Largest limestone quarry',
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
