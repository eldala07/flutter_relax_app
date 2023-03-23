import 'package:flutter/material.dart';
import 'package:ui/pages/home/widgets/get_started_button.dart';
import 'package:ui/pages/home/widgets/home_image.dart';
import 'package:ui/pages/home/widgets/home_subtitle.dart';
import 'package:ui/pages/home/widgets/home_title.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  var _animateImage = false;
  var _animateTitle = false;
  var _animateSubtitle = false;
  var _animateButton = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        _animateImage = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 2750), () {
      setState(() {
        _animateTitle = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        _animateSubtitle = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 4500), () {
      setState(() {
        _animateButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeImage(animateImage: _animateImage),
                Column(
                  children: [
                    HomeTitle(
                        animateTitle: _animateTitle,
                        animateImage: _animateImage),
                    const SizedBox(height: 20),
                    HomeSubtitle(
                        animateSubtitle: _animateSubtitle,
                        animateImage: _animateImage),
                  ],
                ),
                GetStartedButton(
                    animateButton: _animateButton, animateImage: _animateImage),
                const SizedBox(height: 10),
              ]),
        ),
      ),
    );
  }
}
