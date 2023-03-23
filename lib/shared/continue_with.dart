import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        width: 100,
        height: 2,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0x30EEEEEE),
                Color(0xFF555555),
              ],
            ),
          ),
        ),
      ),
      const Text(
        'Or continue with',
        style: TextStyle(
          fontSize: 14,
          height: 1.4,
          color: Color(0xFF5D545D),
        ),
      ),
      SizedBox(
        width: 100,
        height: 2,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0x30EEEEEE),
                Color(0xFF555555),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
