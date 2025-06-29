
import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart'; // استدعاء الترجمة

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
     final s = S.of(context); 

  final List<Map> images = [
    {
      "image":
          "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=M3w0MjA4MDF8MHwxfHNlYXJjaHw0fHxuYW5vdGVjaG5vbG9neSUyMHRleHRpbGUlMjBpbmR1c3RyeSUyMHRlY2hub2xvZ2ljYWwlMjBkZXZlbG9wbWVudHMlMjBuYW5vc2NhbGUlMjB0ZWNobm9sb2d5fGVufDF8MHx8fDE3MDQ1ODEzMDl8MA&ixlib=rb-4.0.3&w=1000&fit=crop&h=340&q=75&fm=webp",
      "title": s.carouselTitle1
    },
    {
      "image":
          "https://i2.wp.com/waltermorales.org/wp-content/uploads/2023/03/pexels-photo-3862632.jpeg?resize=660,440&ssl=1",
      "title": s.carouselTitle2
    },
    {
      "image":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRZxfO9L-lhUZDw_5k0a-SXGKpk3ds_VLfflywAeHuZxg_6-l6_",
      "title": s.carouselTitle3
    },
  ];

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.9, // استجابة أفضل
                child: PageView.builder(
                  controller: _controller,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          images[index]['image'],
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, progress) {
                            if (progress == null) return child;
                            return const Center(child: CircularProgressIndicator());
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Icon(Icons.broken_image)),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Text(
                            images[index]['title'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Positioned(
              left: 10,
              child: _buildArrowButton(Icons.chevron_left, _previousPage),
            ),
            Positioned(
              right: 10,
              child: _buildArrowButton(Icons.chevron_right, _nextPage),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 12 : 8,
              height: _currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? const Color(0xff9333ea)
                    : Colors.grey[400],
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }

  void _nextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      _controller.animateToPage(0, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _controller.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      _controller.animateToPage(2, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }

  Widget _buildArrowButton(IconData icon, VoidCallback onPressed) {
    return Material(
      color: Colors.black.withOpacity(0.4),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
