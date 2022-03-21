import 'package:flutter/material.dart';
import 'package:scuffup/pages/splash_screen.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:scuffup/pages/login.dart';

void main() => runApp(SplashScreen());
  Map<int, Widget> op = {1: Login(), 2: Login()};
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return(MaterialApp(
    home: CustomSplash(
      imagePath: 'assets/scuff.png',
      backGroundColor: Colors.orangeAccent,
      // backGroundColor: Color(0xfffc6042),
      animationEffect: 'zoom-in',
      logoSize: 270.90,
      home: Login(),
      duration: 8000,
      outputAndHome: op,
      type: CustomSplashType.StaticDuration,
    ))
    );
  }
}
  
 