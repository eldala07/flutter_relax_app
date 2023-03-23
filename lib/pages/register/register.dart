import 'package:flutter/material.dart';
import 'package:ui/pages/register/widgets/signin_text_button.dart';
import 'package:ui/pages/register/widgets/signup_button.dart';
import 'package:ui/pages/register/widgets/signup_form.dart';
import 'package:ui/shared/continue_with.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  var _animateFade = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _animateFade = true;
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
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.0),
                          child: Text(
                            'Join us!',
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
                        // SizedBox(height: 20),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 45.0),
                        //   child: Text(
                        //     "Welcome back, you've been missed!",
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //       height: 1.4,
                        //       color: Color(0xFF5D545D),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SignupForm(),
                    SignupButton(),
                    ContinueWith(),
                    SignupMethods(),
                    SigninTextButton(),
                    SizedBox(height: 10),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class SignupMethods extends StatelessWidget {
  const SignupMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: const Color(0xFFF9F9F9), width: 2),
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
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: const Color(0xFFF9F9F9), width: 2),
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
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: const Color(0xFFF9F9F9), width: 2),
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
      ],
    );
  }
}
