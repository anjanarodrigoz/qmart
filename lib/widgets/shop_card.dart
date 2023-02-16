import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class ShopCard extends StatelessWidget {
  final String name;
  final String description;
  final double miles;
  final String url;
  final double rating;
  final int ratingCount;
  final String duration;
  final VoidCallback onTap;
  final VoidCallback addToFavourite;

  const ShopCard(
      {super.key,
      required this.name,
      required this.description,
      this.url =
          'https://www.mining.com/wp-content/uploads/2016/10/a-lot-more-automation-a-lot-less-humans-predicted-for-the-mining-industry.jpg',
      this.miles = 0.5,
      this.rating = 5.0,
      this.ratingCount = 10,
      this.duration = '30-35',
      required this.onTap,
      required this.addToFavourite});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Card(
          elevation: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: SizedBox(
                        width: size.width,
                        height: 180,
                        child: ImageNetwork(
                          image: url,
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
                      onPressed: addToFavourite,
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
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '$miles Mi',
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
                                children: [
                                  Text(
                                    '$rating',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    size: 15.0,
                                  ),
                                  Text(
                                    '($ratingCount)',
                                    style: const TextStyle(
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
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '$duration min',
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.green.shade900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              //   child: Row(
              //     children: const [
              //       Text(
              //         "Sponsored",
              //         style: TextStyle(
              //           fontSize: 14,
              //         ),
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       Icon(
              //         Icons.info,
              //         color: Colors.grey,
              //         size: 15,
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
