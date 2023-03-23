import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  var _isObscured = true;

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
              suffixIconColor: const Color(0xFF323144),
              suffixIcon: const Icon(Icons.email),
              filled: true,
              fillColor: const Color(0xFFfafafa),
              contentPadding: const EdgeInsets.all(20.0),
              hintText: 'Email',
              hintStyle: const TextStyle(
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
              hintText: 'Password',
              hintStyle: const TextStyle(
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
              hintText: 'Confirm Password',
              hintStyle: const TextStyle(
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
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                const Text(
                  'By signing up, you agree to the ',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.4,
                    color: Color(0xFF5D545D),
                  ),
                ),
                InkWell(
                  onTap: () => context.go('/'),
                  child: const Text(
                    'Terms of Service',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.4,
                      color: Color(0xFFFC6650),
                    ),
                  ),
                ),
                const Text(
                  ' and ',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.4,
                    color: Color(0xFF5D545D),
                  ),
                ),
                InkWell(
                  onTap: () => context.go('/'),
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.4,
                      color: Color(0xFFFC6650),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
