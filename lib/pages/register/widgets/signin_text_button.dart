import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninTextButton extends StatelessWidget {
  const SigninTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Joined us before?  ',
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
              'Login!',
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Color(0xFFFC6650),
              ),
            ),
          ),
          onTap: () => context.go('/login'),
        ),
      ],
    );
  }
}
