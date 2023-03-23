import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required bool animateButton,
    required bool animateImage,
  })  : _animateButton = animateButton,
        _animateImage = animateImage;

  final bool _animateButton;
  final bool _animateImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _animateButton ? 1 : 0,
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, _animateImage ? 0 : 100, 0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xFFe1e1e1)),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF5B9C8B),
                  Color(0xFF5B9C8B),
                  // Color(0xFF6AA58C),
                  // Color(0xFF5C9284),
                ],
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Colors.white,
                shadowColor: Colors.transparent,
                elevation: 0,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              ),
              onPressed: () {
                context.go('/login');
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
