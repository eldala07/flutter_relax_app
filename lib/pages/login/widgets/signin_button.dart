import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: const Color(0xFFe1e1e1)),
            color: const Color(0xFFFD5E0D),
          ),
          child: Row(
            children: [
              Expanded(
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
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onPrimary: Colors.white,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.all(20.0),
                    ),
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
