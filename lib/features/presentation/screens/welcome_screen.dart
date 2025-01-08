import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:news_app/features/presentation/screens/home/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  late final BuildContext cx;
  @override
  Widget build(BuildContext context) {
    cx = context;
    return Scaffold(
        body: FutureBuilder(
      future: sleep(2),
      builder: (cx, snapshot) => Image.asset(
        "assets/images/new1.jpg",
        fit: BoxFit.cover,
      ),
    ));
  }

  Future<void> sleep(int timer) async {
    await Future.delayed(Duration(seconds: timer));
    Navigator.of(cx).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }
}
