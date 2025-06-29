import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart'; 

void CartButton(BuildContext context, String productName) {
  final overlay = Overlay.of(context);
  late OverlayEntry overlayEntry;

  double opacity = 0.0;
  bool isHoveringContainer = false;
  bool isHoveringClose = false;
  Offset offset = Offset.zero;

  final s = S.of(context); 

  overlayEntry = OverlayEntry(
    builder: (context) {
      return Positioned(
        bottom: 30,
        right: 20,
        child: StatefulBuilder(
          builder: (context, setState) {
            return MouseRegion(
              onEnter: (_) => setState(() => isHoveringContainer = true),
              onExit: (_) => setState(() {
                isHoveringContainer = false;
                isHoveringClose = false;
              }),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: opacity,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  transform: Matrix4.translationValues(offset.dx, offset.dy, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: 300,
                      height: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  s.itemAddedToCart, 
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  s.productAddedSuccessfully(productName), 
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AnimatedOpacity(
                            opacity: isHoveringContainer ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 300),
                            child: MouseRegion(
                              onEnter: (_) =>
                                  setState(() => isHoveringClose = true),
                              onExit: (_) =>
                                  setState(() => isHoveringClose = false),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    opacity = 0.0;
                                    offset = const Offset(40, 0);
                                  });
                                  Future.delayed(
                                    const Duration(milliseconds: 300),
                                    () {
                                      if (overlayEntry.mounted) {
                                        overlayEntry.remove();
                                      }
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  child: Icon(
                                    Icons.close,
                                    color: isHoveringClose
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );

  overlay.insert(overlayEntry);

  Future.delayed(const Duration(milliseconds: 100), () {
    opacity = 1.0;
    overlayEntry.markNeedsBuild();
  });

  Future.delayed(const Duration(seconds: 5), () {
    if (overlayEntry.mounted) {
      opacity = 0.0;
      offset = const Offset(40, 0);
      overlayEntry.markNeedsBuild();
      Future.delayed(const Duration(milliseconds: 400), () {
        if (overlayEntry.mounted) overlayEntry.remove();
      });
    }
  });
}
