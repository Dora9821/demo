import 'package:demo/feature/song/song_page_controller.dart';
import 'package:demo/firebase_options.dart';
import 'package:demo/themes/theme_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:demo/feature/login/login_binding.dart';
import 'package:demo/feature/login/login_view.dart';
import 'package:demo/router/router.dart';
// import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController(), permanent: true);
    Get.put(SongPageController(), permanent: true);
    // final isLight = SchedulerBinding.instance?.window.platformBrightness ==
    //     Brightness.light;
    // final themeController = Get.put(ThemeController(), permanent: true);

    return GetMaterialApp(
      initialBinding: LoginBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Music',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
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
      home: const LoginPage(
        title: 'Music',
      ),
    );
  }
}
