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
    },
    '10002': {
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
        appBar: AppBar(
          backgroundColor: Colors.amber.shade900,
        ),
        body: ListView.builder(
          itemCount: map.values.toList().length,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          itemBuilder: (BuildContext context, int index) {
            return ShopCard(
              addToFavourite: () {},
              description: 'Siyaluma Gal kapana wada karanu labe',
              name: 'Randima Gal quarry',
              onTap: () {},
            );
          },
        ));
  }
}
