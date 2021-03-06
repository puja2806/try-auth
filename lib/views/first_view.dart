import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FirstView extends StatelessWidget {
  final primaryColor = const Color(0xFF75A2EA);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: primaryColor,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _height * 0.10,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 44, color: Colors.white),
              ),
              SizedBox(
                height: _height * 0.10,
              ),
              AutoSizeText(
                "Lets start planning your next trip",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
