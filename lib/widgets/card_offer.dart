import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'hover_card.dart';

class CardOffer extends StatelessWidget {
  CardOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    final List<Map<String, String>> offers = [
      {
        "title": s.offer1Title,
        "subtitle": s.offer1Subtitle,
        "shape": s.offer1Shape,
      },
      {
        "title": s.offer2Title,
        "subtitle": s.offer2Subtitle,
        "shape": s.offer2Shape,
      },
      {
        "title": s.offer3Title,
        "subtitle": s.offer3Subtitle,
        "shape": s.offer3Shape,
      },
      {
        "title": s.offer4Title,
        "subtitle": s.offer4Subtitle,
        "shape": s.offer4Shape,
      },
      {
        "title": s.offer5Title,
        "subtitle": s.offer5Subtitle,
        "shape": s.offer5Shape,
      },
    ];

    return ListView.builder(
      itemCount: offers.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(9),
          child: HoverCard(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offers[index]['title']!,
                    style: const TextStyle(
                      fontFamily: "Suwannaphum",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    offers[index]['subtitle']!,
                    style: const TextStyle(
                      fontFamily: "Suwannaphum",
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF9731e0), Color(0xFFd6297f)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  offers[index]['shape']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
