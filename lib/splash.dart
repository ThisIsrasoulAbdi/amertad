import 'dart:async';

import 'package:amertad/view/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.run(() {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon/icon.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 22,
              ),
              CupertinoActivityIndicator(color: themeData.colorScheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}
