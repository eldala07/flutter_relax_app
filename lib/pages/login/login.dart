import 'package:flutter/material.dart';
import 'package:ui/pages/login/widgets/login_form.dart';
import 'package:ui/pages/login/widgets/signin_button.dart';
import 'package:ui/pages/login/widgets/signup_text_button.dart';
import 'package:ui/shared/continue_with.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  var _animateFade = false;

  var _animateGoogle = false;
  var _animateFacebook = false;
  var _animateApple = false;

  var _animateForgot = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _animateFade = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _animateGoogle = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        _animateApple = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1400), () {
      setState(() {
        _animateFacebook = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        _animateForgot = true;
      });
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
        backgroundColor: Colors.transparent,
        appBar: null,
        bottomNavigationBar: null,
        body: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(239, 249, 249, 1),
                  Color.fromRGBO(239, 229, 229, 1),
                ],
              ),
            ),
            child: AnimatedOpacity(
              opacity: _animateFade ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Text(
                            'Hello Again!',
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
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45.0),
                          child: Text(
                            "Welcome back, you've been missed!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.4,
                              color: Color(0xFF5D545D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const LoginForm(),
                    const SigninButton(),
                    const ContinueWith(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AnimatedOpacity(
                          opacity: _animateGoogle ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            height: _animateGoogle ? 75 : 30,
                            width: _animateGoogle ? 75 : 30,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                  color: const Color(0xFFF9F9F9), width: 2),
                              color: const Color(0x20FAFAFA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Image(
                                image: AssetImage('assets/images/google.png'),
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: _animateApple ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            height: _animateApple ? 75 : 30,
                            width: _animateApple ? 75 : 30,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                  color: const Color(0xFFF9F9F9), width: 2),
                              color: const Color(0x20FAFAFA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Image(
                                image: AssetImage('assets/images/apple.png'),
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: _animateFacebook ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            height: _animateFacebook ? 75 : 30,
                            width: _animateFacebook ? 75 : 30,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                  color: const Color(0xFFF9F9F9), width: 2),
                              color: const Color(0x20FAFAFA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Image(
                                image: AssetImage('assets/images/facebook.png'),
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SignupTextButton(animateForgot: _animateForgot),
                    const SizedBox(height: 10),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
