// ignore_for_file: unnecessary_import, unused_import, undefined_shown_name, non_constant_identifier_names, unnecessary_new, unnecessary_overrides, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:swa/app/modules/helper/views/helper_view.dart';
import 'package:swa/app/modules/home/views/detail_view.dart';
import 'package:swa/app/modules/home/views/homepage_view.dart';

import 'dart:math' show sin, cos, sqrt, atan2, radians;
import 'package:vector_math/vector_math.dart' as vm;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:swa/app/modules/home/providers/home_provider.dart';

class HomeController extends GetxController {
  var lstTask = List<dynamic>.empty(growable: true).obs;
  var lstDetail = List<dynamic>.empty(growable: true).obs;

  var isDataProcessing = false.obs;
  var listV = false.obs;

  // For Pagination
  ScrollController scrollController = ScrollController();
  var isMoreDataAvailable = true.obs;

  var hal = 0.obs;
  @override
  void onInit() {
    super.onInit();

    getTask();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // Fetch Data
  void getTask() {
    try {
      isMoreDataAvailable(false);
      isDataProcessing(true);
      lstTask.clear();
      HomeProvider().getList().then((resp) {
        print("disini2");

        isDataProcessing(false);

        lstTask.addAll(resp);
      }, onError: (err) {
        isDataProcessing(false);
        showSnackBar("Error", err.toString(), Colors.red);
      });
    } catch (exception) {
      isDataProcessing(false);
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  // Fetch Data detail
  void getTaskDetail(id) {
    try {
      isMoreDataAvailable(false);
      isDataProcessing(true);
      lstDetail.clear();
      HomeProvider().getListDetail(id).then((resp) {
        isDataProcessing(false);

        lstDetail.add(resp);
      }, onError: (err) {
        isDataProcessing(false);
        showSnackBar("Error", err.toString(), Colors.red);
      });
      Get.to(DetailView());
    } catch (exception) {
      isDataProcessing(false);
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  // common snack bar
  showSnackBar(String title, String message, Color backgroundColor) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: backgroundColor,
        colorText: Colors.white);
  }
}
