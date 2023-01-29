import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie_app/screen/onboard/onboardscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffED474A),
      body: SplashBody(),
    );
  }
}

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      // 5 seconds over, navigate to Page2.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const Onbording();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/foodio-logo.png'),
    );
  }
}
