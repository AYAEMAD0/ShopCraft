import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'package:shopcraft/widgets/app_bar_home.dart';
import 'package:shopcraft/widgets/card_offer.dart';
import '../widgets/custom_carousel.dart';
import '../widgets/grideview_home.dart';

class ShoppingHome extends StatelessWidget {
  ShoppingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context); 

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5A8DEE), Color(0xFFA749FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBarHome(),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                s.featuredProducts,
                style: const TextStyle(
                  fontFamily: "Suwannaphum",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18),
                child: CustomCarousel(),
              ),
              Text(
                s.shopCollection,
                style: const TextStyle(
                  fontFamily: "Suwannaphum",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GideviewHome(),
              const SizedBox(height: 10),
              Text(
                "${s.hotOffers} 🔥",
                style: const TextStyle(
                  fontFamily: "Suwannaphum",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CardOffer(),
            ],
          ),
        ],
      ),
    );
  }
}
