import 'package:flutter/material.dart';
import 'package:shopcraft/widgets/cart_button.dart';
import 'package:shopcraft/widgets/hover_card.dart';
import 'package:shopcraft/generated/l10n.dart';


class GideviewHome extends StatelessWidget {
  GideviewHome({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> products = [
    {
      "image":
          "https://i.postimg.cc/D0WHRW27/luca-bravo-XJXWbf-So2f0-unsplash.jpg",
      "price": "\$2,399",
      "nameKey": "product_macbook",
    },
    {
      "image":
          "https://i2.wp.com/waltermorales.org/wp-content/uploads/2023/03/pexels-photo-3862632.jpeg?resize=660,440&ssl=1",
      "price": "\$299",
      "nameKey": "product_headphones",
    },
    {
      "image":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRNOJuyj7QrBfwqfQHfk4vr-G7_BSNXRCYcSRyqXSb49zmQ9VMe",
      "price": "\$399",
      "nameKey": "product_watch",
    },
    {
      "image":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRZxfO9L-lhUZDw_5k0a-SXGKpk3ds_VLfflywAeHuZxg_6-l6_",
      "price": "\$129",
      "nameKey": "product_backpack",
    },
    {
      "image":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSCkaM44bc4ddi3IJ41LFZgCyI3lUGrhSb4OowPeyRF1CU7SBX4",
      "price": "\$199",
      "nameKey": "product_keyboard",
    },
    {
      "image":
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR5zULtjHky9gghuJE-sFcCNBXvFhznLa6e2GMtrQCfp1Q95nM0",
      "price": "\$79",
      "nameKey": "product_mouse",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          final productNameKey = product['nameKey'];
          final localizedName = _getProductName(context, productNameKey);

          return HoverCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          product['image'],
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                              color: Color(0xff7e22ce),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.shopping_cart, size: 18),
                              color: Colors.white,
                              onPressed: () {
                                CartButton(context, localizedName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizedName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "Suwannaphum",
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        S.of(context).productPrice(product['price']),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff9333ea),
                          fontFamily: "Suwannaphum",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _getProductName(BuildContext context, String key) {
    final s = S.of(context);
    switch (key) {
      case 'product_macbook':
        return s.product_macbook;
      case 'product_headphones':
        return s.product_headphones;
      case 'product_watch':
        return s.product_watch;
      case 'product_backpack':
        return s.product_backpack;
      case 'product_keyboard':
        return s.product_keyboard;
      case 'product_mouse':
        return s.product_mouse;
      default:
        return '';
    }
  }
}