// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, unused_import, duplicate_import, duplicate_ignore, sized_box_for_whitespace, prefer_is_empty, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:swa/app/modules/helper/views/helper_view.dart';
import 'package:swa/app/modules/home/controllers/home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

/// Example without a datasourceclass
class DetailView extends GetView<HomeController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(children: [
                    Text(
                      "Total Data : ${controller.lstDetail.length}",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ])),
              InkWell(
                onTap: () {
                  controller.listV.value = true;
                },
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 17,
                        height: 17,
                        child: Icon(
                          Icons.list_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Center(
                      child: Text(
                        "Detail view",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Obx(() {
        if (controller.isDataProcessing.value == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (controller.lstDetail.length > 0) {
            return Container(
              child: ListView.builder(
                itemCount: controller.lstDetail.length,
                itemBuilder: (BuildContext context, int index) {
                  // print();
                  if (index == controller.lstDetail.length - 1 &&
                      controller.isMoreDataAvailable.value == true) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return InkWell(
                    onTap: () {
                      print(
                          "klik${controller.lstDetail[index]['id'].toString()}");
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(
                                      0, 0, 0, 0.15000000596046448),
                                  offset: Offset(0, 0),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          margin: EdgeInsets.only(bottom: 0),
                          child: Container(
                            width: 326,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.15000000596046448),
                                    offset: Offset(0, 0),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 17.0,
                                      bottom: 10,
                                      left: 12,
                                      right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'User ID',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Text(
                                        controller.lstDetail[index]['userId']
                                            .toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0.0,
                                      bottom: 12,
                                      left: 12,
                                      right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'id',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Text(
                                        controller.lstDetail[index]['id']
                                            .toString(),
                                        // 'name',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0.0,
                                      bottom: 12,
                                      left: 12,
                                      right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'title',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Text(
                                        controller.lstDetail[index]['title']
                                            .toString(),
                                        // 'name',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 8,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0.0,
                                      bottom: 12,
                                      left: 12,
                                      right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'body',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Text(
                                        controller.lstDetail[index]['body']
                                            .toString(),
                                        // 'name',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                113, 113, 113, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 7,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.end,
                                //   children: [
                                //     SizedBox(
                                //       width: 14,
                                //     ),
                                //     GestureDetector(
                                //       child: Icon(
                                //         Icons.desktop_mac_sharp,
                                //         color: Colors.orange,
                                //       ),
                                //       onTap: () {
                                //         dialogConfirmation(
                                //             context,
                                //             controller.lstDetail[index]['id']
                                //                 .toString());
                                //       },
                                //     ),
                                //     SizedBox(
                                //       width: 14,
                                //     ),
                                //   ],
                                // ),

                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        )),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: Text(
                'Data not found',
                style: TextStyle(fontSize: 25),
              ),
            );
          }
        }
      }),
    );
  }
}
