import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
    required bool animateTitle,
    required bool animateImage,
  })  : _animateTitle = animateTitle,
        _animateImage = animateImage;

  final bool _animateTitle;
  final bool _animateImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _animateTitle ? 1 : 0,
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, _animateImage ? 0 : 100, 0),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            'Discover your inner peace',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              height: 1.2,
              color: Color(0xFF323144),
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
