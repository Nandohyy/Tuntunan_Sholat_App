import 'dart:async';
import 'package:sholatapp/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SpashScreenku extends StatefulWidget {
  const SpashScreenku({Key? key}) : super(key: key);

  @override
  _SpashScreenkuState createState() => _SpashScreenkuState();
}

class _SpashScreenkuState extends State<SpashScreenku> {
  @override
  Widget build(BuildContext context) {
    startApp(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 150, 136, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Tuntunan-Sholat APP",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.92),
            child: Text(
              "Development By Anda",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.85),
            child: JumpingDotsProgressIndicator(
              fontSize: 32,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  startApp(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Homepage(username: 'Home Screen',);
      }));
    });
  }
}
