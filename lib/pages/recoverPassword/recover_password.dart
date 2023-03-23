import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// inspired by https://dribbble.com/shots/16316303-Login-and-Sign-up-Screens

class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({super.key});

  @override
  State<RecoverPasswordScreen> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPasswordScreen> {
  final FocusNode _focus = FocusNode();
  var _isFocused = false;
  var _animateFade = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    _isFocused = false;
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _animateFade = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focus.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: null,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              context.go('/login');
            },
          ),
        ),
        body: AnimatedOpacity(
          opacity: _animateFade ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: _isFocused
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    width: double.infinity,
                    height: _isFocused ? 100 : 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/forgot.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Forgot',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF323144),
                      ),
                    ),
                    const Text(
                      'Password?',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF323144),
                      ),
                    ),
                    _isFocused
                        ? Container()
                        : const SizedBox(
                            height: 20,
                          ),
                    _isFocused
                        ? Container()
                        : const Text(
                            "Don't worry, it happens! Please enter the address you used to register and we'll send you a link to reset your password",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFADA4AD),
                              height: 1.4,
                            ),
                          ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  focusNode: _focus,
                  decoration: InputDecoration(
                    hintText: 'Email / Mobile number',
                    hintStyle: const TextStyle(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border:
                                  Border.all(color: const Color(0xFFe1e1e1)),
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
                                side:
                                    const BorderSide(color: Colors.transparent),
                                primary: Colors.transparent,
                                onPrimary: Colors.white,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                padding: const EdgeInsets.all(20.0),
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                context.go('/');
                              },
                              child: const Text('Send reset link'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
