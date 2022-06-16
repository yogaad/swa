// ignore_for_file: prefer_const_constructors, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swa/app/modules/home/views/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:async';

import 'package:swa/app/modules/home/views/homepage_view.dart';

class SplashscreenWidget extends StatefulWidget {
  const SplashscreenWidget({Key? key}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Adaptive.w(100),
        height: 812,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: <Widget>[
          SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 299,
                    height: 124,
                    child: Center(
                      child: Text(
                        "Swamedia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: goHome(),
          ),
        ]));
  }

  goHome() {
    Timer(Duration(seconds: 4), () {
      Get.to(() => HomePage());
    });
  }
}
