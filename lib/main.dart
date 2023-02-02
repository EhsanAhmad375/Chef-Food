import 'Pages/Next.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:chef_food/Pages/config_size.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return GetMaterialApp(
          
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
              duration: 3000,
              splash: Image.asset(
                'asset/wel1.png',
                height: 3.8 * SizeConfig.imageSizeMultiplier,
                // width: 3.8*SizeConfig.imageSizeMultiplier,
              ),
              splashIconSize: 300,
              nextScreen: Next(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.white),
        );
      });
    });
  }
}
