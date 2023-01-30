import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                      width: size.width,
                      height: 180,
                      child: ImageNetwork(
                        image:
                            'https://www.here.com/sites/g/files/odxslz256/files/2022-06/mining-truck-mine-blog.jpg',
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
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              '0.4 Mi',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                Text(
                                  '4.6',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 15.0,
                                ),
                                Text(
                                  '(15)',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              '45-60 min',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),

            // Row(
            //   children: const [
            //     Text(
            //       "Sponsored",
            //       style: TextStyle(
            //         fontSize: 14,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Icon(
            //       Icons.info,
            //       color: Colors.grey,
            //       size: 15,
            //     )
            //   ],
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'description',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
