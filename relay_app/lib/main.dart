import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:relay_app/pages/number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      splash: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0052fe),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset('assets/images/relaylogo.png'),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Text(
                '© All rights reserved',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
      nextScreen: NumberInput(),
    );
  }
}
