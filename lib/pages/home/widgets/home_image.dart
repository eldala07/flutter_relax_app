import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
    required bool animateImage,
  }) : _animateImage = animateImage;

  final bool _animateImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _animateImage ? 1 : 0,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 1500),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, _animateImage ? 0 : 60, 0),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/relax.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
