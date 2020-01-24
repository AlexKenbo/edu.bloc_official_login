import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1));
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}