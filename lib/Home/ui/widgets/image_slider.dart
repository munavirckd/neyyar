import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SwipeImageView extends StatefulWidget {
  const SwipeImageView({Key? key}) : super(key: key);

  @override
  State<SwipeImageView> createState() => _SwipeImageViewState();
}

class _SwipeImageViewState extends State<SwipeImageView> {
  late PageController _pageController;
  List<String> imageNames = ['image2', 'image2', 'image2'];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: imageNames.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return imageLoadView(index, imageNames);
                },
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 8,
              child: DotsIndicator(
                dotsCount: imageNames.length,
                position: _currentPage,
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size(8.0, 8.0),
                  color: Colors.grey,
                  activeColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageLoadView(int index, List<String> imageNames) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Image.asset(
      'assets/images/${imageNames[index]}.png',
      fit: BoxFit.cover,
    ),
  );
}
