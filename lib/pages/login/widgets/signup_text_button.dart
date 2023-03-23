import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupTextButton extends StatelessWidget {
  const SignupTextButton({
    super.key,
    required bool animateForgot,
  }) : _animateForgot = animateForgot;

  final bool _animateForgot;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _animateForgot ? 1 : 0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not a member?  ',
            style: TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Color(0xFF5D545D),
            ),
          ),
          InkWell(
            child: Container(
              height: 30,
              alignment: Alignment.center,
              child: const Text(
                'Sign Up!',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.4,
                  color: Color(0xFFFC6650),
                ),
              ),
            ),
            onTap: () => context.go('/register'),
          ),
        ],
      ),
    );
  }
}
