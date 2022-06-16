// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swa/app/modules/splashscreen/views/body.dart';

import '../controllers/splashscreen_controller.dart';

class SplashView extends GetView<SplashscreenController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashscreenWidget());
  }
}
