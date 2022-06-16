// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swa/app/modules/home/controllers/home_controller.dart';
import 'package:swa/app/modules/home/views/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    final homeC = Get.find<HomeController>();
    int page = homeC.hal.value;
    return Scaffold(
      // appBar: Config.appBar(width),
      body: page == 0 ? HomeView() : Container(),

      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 6.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    homeC.hal.value = 0;
                  });
                },
                child: Container(
                  width: 22,
                  height: 22,
                  child: Icon(
                    Icons.table_chart,
                    size: 18,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    homeC.hal.value = 1;
                  });
                },
                child: Container(
                  width: 22,
                  height: 22,
                  child: Icon(
                    Icons.person,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
