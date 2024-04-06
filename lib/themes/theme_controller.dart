import 'package:demo/themes/app_theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final themeData = AppTheme.green().obs;

  void changeTheme() {
    if (themeData.value.themeName == AppThemes.blue) {
      themeData.value = AppTheme.green();
    } else {
      themeData.value = AppTheme.blue();
    }
  }
}
