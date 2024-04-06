import 'package:demo/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:demo/feature/login/login_binding.dart';
import 'package:demo/feature/login/login_view.dart';
import 'package:demo/router/router.dart';
// import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController(), permanent: true);
    // final isLight = SchedulerBinding.instance?.window.platformBrightness ==
    //     Brightness.light;
    // final themeController = Get.put(ThemeController(), permanent: true);

    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: LoginBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData.dark().copyWith(
      //   brightness: Brightness.dark,
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //   textTheme: const TextTheme(
      //     labelLarge: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      // themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      getPages: AppRouter.routes,
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}
