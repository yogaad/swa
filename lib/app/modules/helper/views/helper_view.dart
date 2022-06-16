// ignore_for_file: unnecessary_new, prefer_const_constructors, unused_import, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelperWidget {
  static void showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void alertRed(BuildContext context, String kata) {
    Get.snackbar(
      "Terjadi kesalahan",
      kata,
      icon: Icon(Icons.block_flipped, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent,
      borderRadius: 20,
      borderWidth: 1,
      colorText: Colors.white,
      margin: EdgeInsets.all(15),
    );
  }

  static void alertGreen(BuildContext context, String kata) {
    Get.snackbar(
      "Berhasil",
      kata,
      icon: Icon(Icons.verified_user_outlined, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Color.fromRGBO(92, 142, 88, 1),
      borderRadius: 20,
      borderWidth: 1,
      colorText: Colors.white,
      margin: EdgeInsets.all(15),
    );
  }
}

class TextFieldReg extends StatelessWidget {
  TextFieldReg({Key? key, required this.controller, required this.hinText})
      : super(key: key);
  final TextEditingController controller;
  final String hinText;

  final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60), borderSide: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      textInputAction: TextInputAction.next,
      style: TextStyle(fontSize: 17),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(241, 241, 242, 1), width: 2),
          borderRadius: BorderRadius.circular(6.0),
        ),
        floatingLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(241, 241, 242, 1), width: 2),
          borderRadius: BorderRadius.circular(6.0),
        ),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.only(left: 20, right: 20),
        hintText: hinText,
      ),
    );
  }
}

class TextFieldReg2 extends StatelessWidget {
  TextFieldReg2({Key? key, required this.controller, required this.hinText})
      : super(key: key);
  final TextEditingController controller;
  final String hinText;

  final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60), borderSide: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      textInputAction: TextInputAction.next,
      style: TextStyle(fontSize: 17),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(241, 241, 242, 1), width: 2),
          borderRadius: BorderRadius.circular(6.0),
        ),
        floatingLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(241, 241, 242, 1), width: 2),
          borderRadius: BorderRadius.circular(6.0),
        ),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.only(left: 20, right: 20),
        hintText: hinText,
      ),
      obscureText: true,
    );
  }
}
