import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swa/app/modules/splashscreen/views/splashscreen_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      WidgetsFlutterBinding.ensureInitialized();

      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      return const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "SwaInformatika",
            // ignore: unnecessary_const
            home: SplashView(),
          ));
    });
  }
}
