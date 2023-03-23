import 'package:flutter/material.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({
    super.key,
    required bool animateSubtitle,
    required bool animateImage,
  })  : _animateSubtitle = animateSubtitle,
        _animateImage = animateImage;

  final bool _animateSubtitle;
  final bool _animateImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _animateSubtitle ? 1 : 0,
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, _animateImage ? 0 : 100, 0),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.0),
          child: Text(
            "Find calm amidst chaos by discovering inner peace. It's time to take a breath and relax",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
              color: Color(0xFFADA4AD),
            ),
          ),
        ),
      ),
    );
  }
}
