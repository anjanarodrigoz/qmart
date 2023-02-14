import 'package:flutter/material.dart';
import 'package:qmart/widgets/shop_card.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final map = {
    '10001': {
      'id': '1001',
      'name': 'Arukkaru',
      'url':
          'https://www.here.com/sites/g/files/odxslz256/files/2022-06/mining-truck-mine-blog.jpg',
      'rate': '4.6',
      'rateCount': '15',
      'miles': '0.4',
      'duration': '45-60'
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          height: 400.0,
          child: ListView.builder(
            itemCount: map.values.toList().length,
            itemBuilder: (BuildContext context, int index) {
              return ShopCard();
            },
          ),
        ));
  }
}
