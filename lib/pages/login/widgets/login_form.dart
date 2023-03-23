import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFfafafa),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Username',
              labelStyle: const TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Color(0xFFADA4AD),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: _isObscured,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              suffixIconColor: const Color(0xFF323144),
              suffixIcon: IconButton(
                  padding: const EdgeInsets.only(right: 10.0),
                  onPressed: () => setState(() {
                        _isObscured = !_isObscured;
                      }),
                  icon: _isObscured
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)),
              filled: true,
              fillColor: const Color(0xFFfafafa),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
              labelStyle: const TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Color(0xFFADA4AD),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xFFe1e1e1),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  context.go('/recover');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    'Recover Password',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xFF5D545D),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
